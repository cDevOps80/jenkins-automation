pipeline{
    agent any
    stages{
        stage('one'){
            steps{
                script{
                  withVault(configuration: [disableChildPoliciesOverride: false, engineVersion: 2, skipSslVerification: true, timeout: 60, vaultCredentialId: 'app-role', vaultUrl: 'http://3.86.34.246:8200'], vaultSecrets: [[path: 'roboshop-dev/cart', secretValues: [[envVar: 'sample', vaultKey: 'name']]]]) {
                      echo "Thiis os $sample"
                  }
                }
            }
        }
    }
}

 lookup(lookup(lookup(lookup(module.vpc, "main", null), "subnets", null), each.value["subnet_name"], null), "subnet_ids", null)
 lookup(lookup(lookup(lookup(module.vpc,"main",null),"subnets",null),each.value["subnet_name"],null),"subnet_ids",null )