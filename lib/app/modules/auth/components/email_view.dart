part of '../views/auth_view.dart';

class _EmailView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    final _ = controller;
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _.formKeyregister2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 90),
              NameLogoApp(color: Theme.of(context).canvasColor),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cúal es tu correo?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Ingresa tu correo para para completar tu perfil',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              TextFieldCustom(
                backgroundColor: const Color(0xffFCFCFC),
                controller: _.emailTextController,
                hintText: 'micorreo@gmail.com',
                textInputType: TextInputType.text,
                validator: (value) {
                  if (!value!.isEmail) return 'Email no válido'.tr;

                  return null;
                },
              ),
              const Spacer(),
              CustomMaterialButton(
                child: const Text('SIGUIENTE',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                onPressed: () => _.goToPage(2),
              ),

              const SizedBox(height: 40),
              // _.goToPage(1),
            ],
          ),
        ),
      ),
    );
  }
}
