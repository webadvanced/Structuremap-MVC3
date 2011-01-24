using System.Web.Mvc;

[assembly: WebActivator.PreApplicationStartMethod(typeof($rootnamespace$.AppStart_Structuremap), "Start")]

namespace $rootnamespace$ {
    public static class AppStart_Structuremap {
        public static void Start() {
            var container = (IContainer) IoC.Initialize();
            DependencyResolver.SetResolver(new SmDependencyResolver(container));
        }
    }
}