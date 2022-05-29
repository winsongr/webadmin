// ignore_for_file: constant_identifier_names

const RootRoute = "/";
const overViewPageName = "Overview";
const OverViewPageRoute = "/overview";
const driversPageName = "Drivers";
const DriversPageRoute = "/drivers";
const clientsPageName = "Clients";
const ClientsPageRoute = "/clients";
const authenticationPageName = "Authentcation";
const AuthenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(overViewPageName, OverViewPageRoute),
  MenuItem(driversPageName, DriversPageRoute),
  MenuItem(clientsPageName, ClientsPageRoute),
  MenuItem(authenticationPageName, AuthenticationPageRoute),
];
