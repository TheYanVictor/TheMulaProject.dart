import 'package:flutter/material.dart';

class produtos_main_view extends StatefulWidget {
  const produtos_main_view({super.key});

  @override
  State<produtos_main_view> createState() => _produtos_main_viewState();
}

//tamanho da lista de produtos
var list = List<int>.generate(10, (i) => i + 1);

class _produtos_main_viewState extends State<produtos_main_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      //App Bar provisória
      //
      appBar: AppBar(
        backgroundColor: Color(0xFFF24C3D),
        toolbarHeight: 150,
        leading: BackButton(),
        iconTheme: IconThemeData(size: 40),
        //
        // Texto e botoes do app bar
        //
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //
            //Texto central
            //
            Text(
              'Produtos',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            //
            //Botao de home - falta alinhar para cima
            //
            Container(
              child: IconButton(
                icon: const Icon(Icons.house),
                iconSize: 40,
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, 'main_menu');
                },
              ),
            ),
          ],
        ),
      ),

//---------------------------------------------------------------------------------------------------------------------------------

      body:
          //Campo de procura
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            //flex é a porcentagem do espaço a ser utilizado pelo widget em relação ao compartimento pai
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  //espaço do appbar
                  height: 120,
                ),
                Container(
                  //Caixa do texto
                  alignment: Alignment.centerLeft,
                  //tamanho do quadrado de busca
                  width: 300,
                  height: 90,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black38, width: 5),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(40),
                            right: Radius.circular(40),
                          ),
                        ),
                        label: Text(
                          '  Procurar',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 27),
                        )),
                  ),
                ),
              ],
            ),
          ),
//------------------------------------------------------------------------------------------------------------------------
          Spacer(),
          Container(
            height: 25,
            width: 200,
            child: Text(
              '  Frios',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          //Primeira fileira de produtos
          Expanded(
            flex: 2,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'data:image/jpeg;base64,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JbL7T7WqI2lsc0jGk3LWOIF9L2WMhfMK9hUa7TUs7RSqNoTSC0k0rxwdI8g97b2Oq02xAaADuAWzgVrsHozU1brQx3F7F7uyxve/f3ZnkvRwCrOptpjMYA42VJhXpnQb0eE4amubZurKd2ruDpRuH4PjwXT9FuhFPRWkf97MPacOyw/4bN35jn3aLo7ukNm+J3BWGUt5WPisdm6tLTjx7uXn3L44l5wt/kArCnhDBYeJ4lKeAMFh4nisynWYiIiIiIiIiIiIiIiIiIiIiIiIsM0AdrruO8KtqYnt1zHEfXgrhERUbJSFsioBFnAEHIg5gjmFsS0TTmMvl8FqvpHDd8F4i5nbno7o6i7orwPP93bATzjOQ/ZsuI2p6Na2K5jwzN4scAfFjreRK9aFwsrZyFwabSrtHaFelYOkcDf3H2IX56rNmTxG0sMrPzxvaPiRYrVabr9KCoB1WCagp3+vDE780bD8wozQ5q+zbZ/yZ4GP0fyvznnwXwlfob/gVFr9lp/9pn6LNFQ07PUhib+WNg+QXPQHipDttv8Ap/69l+f6PZU0ptFDI/8AIxzh8QLLp9l+jeslsXtbC3i9wxd4a2/nZewmpA0WIzk6AnuXYoDeq1TbFU9kAeZ9PJctsj0d0kNnS3ndwf2WX/INf2iV1DZA0BrAGtGQa0WAHAAaLIKV7tTbzK2oqdrdBnxKla0DRZlSs+qZeZ7/AJ+FrRU5dm7Ief8AJbkbABYCwU0XSjREREREREREREREREREREREREREREREREREREUHMB1CxOpm8wthERaho+fko/YzxW6iItH7Cfe8lNtEN5J8ltovIRYG0zB7Pxz+azAL6i9RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf//Z'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'data:image/jpeg;base64,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JbL7T7WqI2lsc0jGk3LWOIF9L2WMhfMK9hUa7TUs7RSqNoTSC0k0rxwdI8g97b2Oq02xAaADuAWzgVrsHozU1brQx3F7F7uyxve/f3ZnkvRwCrOptpjMYA42VJhXpnQb0eE4amubZurKd2ruDpRuH4PjwXT9FuhFPRWkf97MPacOyw/4bN35jn3aLo7ukNm+J3BWGUt5WPisdm6tLTjx7uXn3L44l5wt/kArCnhDBYeJ4lKeAMFh4nisynWYiIiIiIiIiIiIiIiIiIiIiIiIsM0AdrruO8KtqYnt1zHEfXgrhERUbJSFsioBFnAEHIg5gjmFsS0TTmMvl8FqvpHDd8F4i5nbno7o6i7orwPP93bATzjOQ/ZsuI2p6Na2K5jwzN4scAfFjreRK9aFwsrZyFwabSrtHaFelYOkcDf3H2IX56rNmTxG0sMrPzxvaPiRYrVabr9KCoB1WCagp3+vDE780bD8wozQ5q+zbZ/yZ4GP0fyvznnwXwlfob/gVFr9lp/9pn6LNFQ07PUhib+WNg+QXPQHipDttv8Ap/69l+f6PZU0ptFDI/8AIxzh8QLLp9l+jeslsXtbC3i9wxd4a2/nZewmpA0WIzk6AnuXYoDeq1TbFU9kAeZ9PJctsj0d0kNnS3ndwf2WX/INf2iV1DZA0BrAGtGQa0WAHAAaLIKV7tTbzK2oqdrdBnxKla0DRZlSs+qZeZ7/AJ+FrRU5dm7Ief8AJbkbABYCwU0XSjREREREREREREREREREREREREREREREREREREUHMB1CxOpm8wthERaho+fko/YzxW6iItH7Cfe8lNtEN5J8ltovIRYG0zB7Pxz+azAL6i9RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf//Z'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'data:image/jpeg;base64,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JbL7T7WqI2lsc0jGk3LWOIF9L2WMhfMK9hUa7TUs7RSqNoTSC0k0rxwdI8g97b2Oq02xAaADuAWzgVrsHozU1brQx3F7F7uyxve/f3ZnkvRwCrOptpjMYA42VJhXpnQb0eE4amubZurKd2ruDpRuH4PjwXT9FuhFPRWkf97MPacOyw/4bN35jn3aLo7ukNm+J3BWGUt5WPisdm6tLTjx7uXn3L44l5wt/kArCnhDBYeJ4lKeAMFh4nisynWYiIiIiIiIiIiIiIiIiIiIiIiIsM0AdrruO8KtqYnt1zHEfXgrhERUbJSFsioBFnAEHIg5gjmFsS0TTmMvl8FqvpHDd8F4i5nbno7o6i7orwPP93bATzjOQ/ZsuI2p6Na2K5jwzN4scAfFjreRK9aFwsrZyFwabSrtHaFelYOkcDf3H2IX56rNmTxG0sMrPzxvaPiRYrVabr9KCoB1WCagp3+vDE780bD8wozQ5q+zbZ/yZ4GP0fyvznnwXwlfob/gVFr9lp/9pn6LNFQ07PUhib+WNg+QXPQHipDttv8Ap/69l+f6PZU0ptFDI/8AIxzh8QLLp9l+jeslsXtbC3i9wxd4a2/nZewmpA0WIzk6AnuXYoDeq1TbFU9kAeZ9PJctsj0d0kNnS3ndwf2WX/INf2iV1DZA0BrAGtGQa0WAHAAaLIKV7tTbzK2oqdrdBnxKla0DRZlSs+qZeZ7/AJ+FrRU5dm7Ief8AJbkbABYCwU0XSjREREREREREREREREREREREREREREREREREREUHMB1CxOpm8wthERaho+fko/YzxW6iItH7Cfe8lNtEN5J8ltovIRYG0zB7Pxz+azAL6i9RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf//Z'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'data:image/jpeg;base64,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JbL7T7WqI2lsc0jGk3LWOIF9L2WMhfMK9hUa7TUs7RSqNoTSC0k0rxwdI8g97b2Oq02xAaADuAWzgVrsHozU1brQx3F7F7uyxve/f3ZnkvRwCrOptpjMYA42VJhXpnQb0eE4amubZurKd2ruDpRuH4PjwXT9FuhFPRWkf97MPacOyw/4bN35jn3aLo7ukNm+J3BWGUt5WPisdm6tLTjx7uXn3L44l5wt/kArCnhDBYeJ4lKeAMFh4nisynWYiIiIiIiIiIiIiIiIiIiIiIiIsM0AdrruO8KtqYnt1zHEfXgrhERUbJSFsioBFnAEHIg5gjmFsS0TTmMvl8FqvpHDd8F4i5nbno7o6i7orwPP93bATzjOQ/ZsuI2p6Na2K5jwzN4scAfFjreRK9aFwsrZyFwabSrtHaFelYOkcDf3H2IX56rNmTxG0sMrPzxvaPiRYrVabr9KCoB1WCagp3+vDE780bD8wozQ5q+zbZ/yZ4GP0fyvznnwXwlfob/gVFr9lp/9pn6LNFQ07PUhib+WNg+QXPQHipDttv8Ap/69l+f6PZU0ptFDI/8AIxzh8QLLp9l+jeslsXtbC3i9wxd4a2/nZewmpA0WIzk6AnuXYoDeq1TbFU9kAeZ9PJctsj0d0kNnS3ndwf2WX/INf2iV1DZA0BrAGtGQa0WAHAAaLIKV7tTbzK2oqdrdBnxKla0DRZlSs+qZeZ7/AJ+FrRU5dm7Ief8AJbkbABYCwU0XSjREREREREREREREREREREREREREREREREREREUHMB1CxOpm8wthERaho+fko/YzxW6iItH7Cfe8lNtEN5J8ltovIRYG0zB7Pxz+azAL6i9RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf//Z'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'data:image/jpeg;base64,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JbL7T7WqI2lsc0jGk3LWOIF9L2WMhfMK9hUa7TUs7RSqNoTSC0k0rxwdI8g97b2Oq02xAaADuAWzgVrsHozU1brQx3F7F7uyxve/f3ZnkvRwCrOptpjMYA42VJhXpnQb0eE4amubZurKd2ruDpRuH4PjwXT9FuhFPRWkf97MPacOyw/4bN35jn3aLo7ukNm+J3BWGUt5WPisdm6tLTjx7uXn3L44l5wt/kArCnhDBYeJ4lKeAMFh4nisynWYiIiIiIiIiIiIiIiIiIiIiIiIsM0AdrruO8KtqYnt1zHEfXgrhERUbJSFsioBFnAEHIg5gjmFsS0TTmMvl8FqvpHDd8F4i5nbno7o6i7orwPP93bATzjOQ/ZsuI2p6Na2K5jwzN4scAfFjreRK9aFwsrZyFwabSrtHaFelYOkcDf3H2IX56rNmTxG0sMrPzxvaPiRYrVabr9KCoB1WCagp3+vDE780bD8wozQ5q+zbZ/yZ4GP0fyvznnwXwlfob/gVFr9lp/9pn6LNFQ07PUhib+WNg+QXPQHipDttv8Ap/69l+f6PZU0ptFDI/8AIxzh8QLLp9l+jeslsXtbC3i9wxd4a2/nZewmpA0WIzk6AnuXYoDeq1TbFU9kAeZ9PJctsj0d0kNnS3ndwf2WX/INf2iV1DZA0BrAGtGQa0WAHAAaLIKV7tTbzK2oqdrdBnxKla0DRZlSs+qZeZ7/AJ+FrRU5dm7Ief8AJbkbABYCwU0XSjREREREREREREREREREREREREREREREREREREUHMB1CxOpm8wthERaho+fko/YzxW6iItH7Cfe8lNtEN5J8ltovIRYG0zB7Pxz+azAL6i9RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf//Z'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhMVFRUVFxYVFRUVFRUWGBUVFRUWFhUVFhUYHSggGBolHRUXITEhJSkrLi8vFx80OTYsOCgtLisBCgoKDg0OGxAQGy0mICUvLy4tLS0tLS0rLS8tLS8tLS4tLS0vLy0tLS4tLS0tLS8tLS0tLy0tLS0vLS0tLS0vLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAAAgUDBAYHAQj/xABGEAABAwIDBAYHBQUGBgMAAAABAAIDBBESITEFQVFhBhMicYGhBzJCUpGxwRQjYnLRgqKy4fAzU2NzkpMVg4SzwvEWJCX/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAwQFAgEG/8QANREAAQMCAwQJBAICAwEAAAAAAQACEQMhBBIxBUFRYRMiMnGRodHh8BSBscEz8UJSI2KiFf/aAAwDAQACEQMRAD8A9xRERERERERERERERERERERERERFj61vvD4hEWRFjEzfeb8QvoeDoQiKaIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIsFRUtYO0e4bz4IizrBPUsZ6xz4an4KvfXPf6owjzPjuWKOnRFsP2mT6jPF36BY+skPrOPcMvksrGALI2EncvEWt9mB1z781E0wWzM5kduska2+lyBfflfXQrVdtmmGQcXflafmoqlelS/kcB3kBdtpud2QSpCnG6ykKfxKg3bMe5jvGw+qyt2q0+wfJQ/X4b/cefouuhqcFHq3DRxHiVOOpkb6xDvD9FB21ohqHDwv8isf/FaYkAzMaSCQHHDkLX9bvHxXbMXQqHKx4J4SJ8F50NTXKfBbzdoN9oFvPUfELaY8EXBBHEZrSNOCAQQRbIjMHxWuadzDdhIPLf3jerKjVwir4NobpBhPH2T+isERERERERERERERERERERERERERERVtZWX7LPE/QIilWV1uyzM7zuH6laDIrm5uSdSVlhiWy1nBeIoNjss7ISVq7W2lBSRGWd4a0aDUuO5rW6uK8h6WdPp6q8cd4YdMLT23j8bh/CMuN1w54areFwVTEHq2HHd7nkF6H0g6d0lJdjT10oywxkWB4Pk0HcLnkvO9s+kStmuGOELD7MfZdbm89oeFlyYC+gKA1HOX0eH2ZQpDSTxPpp+TzXV9FXlzWlxLnOqDcuJJJ6h+pOZ0XdUtMuL6Ex3a3lUDzp5f0XoTozgNtbZL5XEtnFP7/RVMYS10fNVUydIaaN7mF+bb4rNccwNAbWJ1FrrS2T03iml6vA5jSbNe4g57sTRkB4lefbI2fPVTOzcxjScTyDdzsVuraD6z735CxJ4G9Z0NEjccVQQ9rsLnYhYSh4YWENwWcHECxLr3Hct04Gk0ZSOXPXWO8+AXJbhGOLXEnnuFp3eMXF45r0OsGS4npMMz/lzjyZ+it9i7QqJOsbUBn3Zw4mAi7hcEEk56X3a6Kr6Sf+Ev8F/osE0XMxAa7UKbDMLXAd3quW2btuopzeGZzOTXZHvacj8F3Ow/SeRZtXGHD+8jFiOZYcvgR3LzgqK+oDi3RauJwVGv/I0E8dD4j9yOS/QlDVQVUfWQyNkHLUHg5pzaeRUopXRG2reHD8v6LwTZm0paeQSQvc1w3t3jg4aEcivWOifTWKstFMBHPoPckP4CdHfhPhdWGVQbGy+axuyalAF7Os3zHfx7wu3ikDhdpuP6yWRU3aidceI4j9VaQyhwxDT5ciplkLKiIiIiIiIiIiIiIiIiLXrKjA2+85DvRFgr6m3YbrvPAcFqwwqVNEdXalZ+QXiI1tzYKt6T9IYaCHG/tPdcMjB7T3fRo3u3czYHY29teOip3TSnTJrRq959VjeZ8gCdy8D27tiWrndNMbudkAPVa0aMaOA8zc71G9+XvWhgcEcQ6XdkefIev7Klt/bk1ZKZpnX3NaNGN91g3Dnqd60AFEKYCqr6pjWtEAWCWUwoqYC9UoXYdBtP+oj84pwvTIWrzPoT6vdU0x/cnC7eh2yC4smGA5kZjtNubXz1tz3rBqUXVMZUAIABbc82j3WHtJh6UgCY9FUbXqaeF945IrufmxpBsXFxOQ0JdrxJ4kLKNrvL2DAXB1r4S3q3gZi4PqOBAvpplmqfp3TxxuFS0Nc0Oa2UC1nNcLtxfLxC6XYvRZgLZOsfgIDhGHdlwIuLnW3K63aWHcwZWkHTUeBt+PyqFWrT6Jj3TeRYiQRqDui4IOuoiywS1TSMTAwA3NmG7bk3d43zPMrmNuy3H7Mnmxy6B1PG2qracubGCxtTGSQ1rXFv3lzuaSTfu5LkdqONwD+LzY5Y9bBuo18xMgkmdONo+StnZ/Rvsw6AHxaD5aHmFzbgllIr4tly28l5UF8upFfCFwuHNO5ep9A+mfW4aaqd29I5D7fBrjvdwO/v17SNxidyOo+vevzy0r1/oH0j+1x9VKf/ALEQ1OsjBli/MMgfA71YpVZ6pXzO1tmhn/PSFt44cxy5bt1rDvAb5qSr6WezurO/Np56kfVWCsrARERERERERERERU0knWSX9kZN+pW3tSowM5uyH1Pw+a1KJuQRFtDRZYmgAucdM7nQDioMbc2XF+lvpD1FOKaM2knvitq2Lf8A6j2e7EuSYEqSjSdVeGN1PyftqvP+n/Sc1s5wk9TFdsQ4+9Iebt3AW5rmWr41TCpEyZK+xo0m02hjdApBfQvgCyBeKcL6xuYA1Og3nuG9WlL0eqXepTvt+JhaPi6yvPRlU2qHxiwMkT8JPvt7XyLz4Ky21JURVNG2aZ7o5uzK1p6toeeyQCyxwgvbqfZKjd0rnZKZaDBN5JMNLoAECYG9wHNZuN2kcM/LknS/fA8J79FXbN2NWwAgGlZikjN5ZCTjYXYQ0NyNy45KVJTvbMZpq+J3V36xrIXyNaD7xYBhzG/mtrpBRtgqaGVoyD+qc45uLbtDcTtXWa5wueCwVscrayuZE1rnTU5OE3zBawOwgauzdYKnhqArRX6XtsL5hjB1KopuBLg+IaQ4GftxyMRtCsXnqgGYMX/wzA+UK02vsWGSNks9Y6RsuBkUcMQwyOGmGLE65ubknTkpUmw4OsbTvnrYZS0ujjkMbesa3URuaS0kW9W9xwVTswxtOzamIuNPCXRzF1rxSSOcS6S2TWkvBxaWaF0XSoipraJkDmuMLzNK9pBbFGHMPacMhfAbDetN+FyHK4u0eSSMpaWlwDSBYaNkakuEG4mvT2niY6jouLACDIFxbvvyvyq9m7Gp6kvfFNVF0ZwOfII73ab4cWZNjnwWOoiN30wqy5zNRLTOkdGCNWyXsBY681m6DV8TIKmR8jQDO8jMXN2tthAzdcmwtqtSkbK6urnxYAWuYwlzSezezsJuADaMnMFZtbD1GYrEte9zKdNoykwBmLmNguLHW6xmBa02Vhm0a7205IJJ4N4E24aRrdUT+is1gY56aUOFx2nNLhpcWDri4stWr2FPGC57DhaLlzXNcABv1v5Lp9v1EYIigjZJNM0AZNcGMJLgc7j2iRuzvwvj2jTGChdGXueSWtJcSRmQSGg6Nsw5KNtas1lN7nfyOAax7RmLZgulpENGgkdYzAjTZwm0a763R2OkncDa2kzvN7LikWXCoELRlbxWNbey698ErJozZzHXHA8WnkRcHvWtZfLJKhcAbHQr36mrmVMEdRGcngOHFrgc2nmCCPBXNLNjaHcdeR3heWeina9jJSOOTgZI+TmjtNHhY/sFeibMks9zDocx3jX6fBX6bszZXw2Nwxw9Z1Pdu7t3oeYVqiIu1UREREREXwlEVDtaXFLhGjRbxOZ+nwWxSiwVdEcTi47yT8SrSMZALxFu07bC5/oL87dMNsfa6uWa924sEX+W24ZbvzPe4r2r0gbS+z0E7wbOc3q2Hfik7Fx3Ak+C/PgUFZ2gW1sijOaoe4fk/rzX1qyBRAWRoVdfQNBX1oUwFEBTCKZrVZ9G6zqaqGTc17b/AJXZO8iV6b0z2IaiNga9sZjkD+sdcYQAQbDfu3jReQrb2ltKecgyzyOtawuMItwbayjcHh7alMw5twYny0Ou+yo4/Z31RHCCD4yP3v8Abt+ku1KJ7WMnl6wsOO1ML3eAR62eHU5YlUS9M4ut66KjkfIAAJJZMJsBa1hisO7iVRUUc9Q+ODHjxOswFrGht8nEloGVhc9y6Gn+zwYPuo5WvnkgLpW47xRiLrXsF7MLusyyuA3msnohh2Nolz3E5oY12VsOu7TKADlNjrlgAxbj/wCdQaeu0l53CN2hm3ONTw3rWh6eVDC4w0lJFiviIizdck9o4xfMnXissPpBq2iwZC0HUNiYB8MSo9q0WCeSNoJDZXxtyJvgkcwDmchlzWJlI83s15trZjja2t/d0OvBaTGUSwPboQCJ4GI1vvjvsr7NnYQAOy63vz0XSf8AzaV2boYD+aIfRy03dJGm+KhhzFnFgEZI33Od1KloKbCwvdPfqXSSBkZIaQQIw0lubTn2tMtQtIbKmwGbq3hgAJJFrYjYGxN7HjZVWsw2ckZmmYmXMkyYi4nSR3hcOw+Fd1SwDdcRxFpidPxZWw2jTxuMro56cyAXk7MgINrW9YgaaNGgWLb1fG+GJkUolAJJdjBJcBa7raOOI5KgbSMvfCLnO9rlZ8K9+nOcPc8ujjfQENEmXQ0EgS4xuhR0MEyk/O2BE2A4+9zxWvgXwsW3gUTGrOZXi5ahYoFq3DGoOjXocmaVLY9aYJ45m6se094B7Q8RceK9xmks+ORuYJa4Hi138ivB3NXrvRWu6/Z8MgNywGInnE4tHkAreGdchfPbepgtY/fcfbXyv4ruEWGmlxsa7iP/AGsyuL5tERERFq7RkwxPP4T55fVbSrtvutC7mWj94H6IiqKIK1p8yFW0rcgrSkb2gvEXn/pvrbR08I9p75T/AMtoY2/+6fgvJ2rvPTVPetjZ7kDT4vkffyAXBNVaoesV9Ns0ZcO3nJ81kaphRCmFCtVqmFMKAUgvFZYphAvgWRjCSAASToACSe4DVFKF0fo9e0VgvYEscG396wPyDl92VTAswS3BpZ3SygnMQkMbNYby0wsFuMgVVHsaqBGGCcG4sRFICDfIg4cjzVlXyV1O5kk7iHOvYOc12KwscbAe0LG3avqsmvlq1CaNRsuAjrXBbmuImZa5wNrG4lVqjZecjmy4ACTeROgvMgkboV/Q18Tn0kj5I2DrKiSQF7RaoldisQc+YNrWHctd1extOwxTQ9Y7rxJeRtw+XJ8zWDOYhgLWltxvzCpqzaNK+IkU5jnOXYOGIby/De4z0ba3NVuzntEjDICWBzC8cWhwxj4KuMA17TYgCerDdJc6AQ6465AMibSLQoG4IOkmRE2IH/Y7iZ7VjvgWsu6mnY6N8keJ7DFS07WsaS7A12OSM2GRtiBG5VW2Nol0knVESdbZwYY5S5hAjBDmmwP9m0Ye2O7MHUqTM/q4muwm+MNkeyJ75HjJzWOdk0tAa0DK1+NhhNdVREsdNUNIyLXSym37JOSr4bCNHZyk8M146oBPVJvlB0YbkO4CGlh5m4J4TcC0TAt2Z3G5B5aEkDmktcC1w1DgQRcXzBzGq+tYp2JJJvnmSSSSTvJOZWaONbBcY62vzjeFdJI1+eyxtiUuoW7HCs7adRGpChdUVS+K2ZVY7aEZJa27nXsGgXvrmDpbLVXW2tmSyx4IRd5IAAIBN91zuVZsno66El0hGIXGFpuBuJLt6npuYWZifsqrq9TpA1q030rnZy+DW6D8x9or1D0avvRSx+5Lccg5jfq0rhJ412foyP3dUN33R/jVrDPl4UO0mN+lcd9r79R6rv8AYzvurcC4ed/qrBV+xj2DycfkFYLTXyqIiIiKu26Puv2m/NWK0NttvC7kWn94IirKRWtOM1V0QVpBqvEXinphP/6J5RRjycfquNYu19MUdtoX96KI/vSD6LiWKq/tFfUYD+BizNU2qLVIKJajVMKQUQpheKw0r6Fet2i1lKIYQ4TOe4zva2xe3PBGHt7WDi3iDxzomq8ldLTiJkNw6SNkhkjuHuMly1rXtzDRk2wtch175WqYprX5WESZkA2BgHtWNr8DeNBJHlQZ4bE3mN1uNjb7axoJW7smgaKZj3McXVNQIXGNo6z7O2xlDBa+JzrAjeGha1R0fe5+Kmif1T3ubHjLQ67cjjsezmN9uGqvqfakUE1NA92FsMbusOobPK3ttNs+ySAT+I8Csztox08FGX4nYWunDbdqSTPqzcj1buLs7HTK4ssj6mu2oalME9JJAIMEdaLcQ1jNdzjoDKo/UVWOzMbObS0yOtEAXsGDfo46C65mh6PTPJBDWWc5hdI7C3Ez123AJOHebW5rFROEEzXSMx9W83YTYEtcRa/K3kreo6QMkjYRiEzDKXNwtMcoldidfGSbHfcHU23Kpppw6Zr5rvGJpeAALtvd4AFgPayy153V1jq7w/pRaCIEgzJ0O+RBEGJNtCrjH1n5ukbAiIGu8WO+QAZFptOq6eoDJKeFz3MjM08sznuJL7F7mluJrDc2IIvYWbussu0NlNnqJBK5zJHSEi1ns+zsjbY3uDi0v3gZ6qrqquKTqmvkxNgaRhibIHSXdc4esjbHHcAD1st10G2HmV8pa3ttfGW52DHANDRaxyAGffxWYylVyzTlsZ4BsBLuqBIvYXmdADlVAMq6tkdqBwk2AnWYva1tCtxmz5HQxsJHVtidV4QztWcSGgm/accgBla++y16ijax5ax2IA2vzAGIZa2JIvyKyx7Wly9T+y+zkYTYxgmwNni1rm2G3ip0sHdwAAsABoANw/o3NypKXTsJNQiL2Eakkzxn9W7QKS8Ek2F/MqMEC2Htw2Ftb+XPd3/NbsECxbRl6l8MhuGklrrG2tiM/ArulUa+s1rtCoHvJsFGRzWtLsuzmSG5eLnA/IL5E4vaHNDi0+1eIjLX2FT7crsZGBxA4OknvbmBcFVlHXCM4n4Tr77j++cI+BWq0QbH55qA0XESQQeYPsrTbLAc7Dhe1r8uZ/rJX/o8jtHUndeMfDH+q42t2tjcHHstGQHHKw7hyHALu/R7Y0ksnvykDmGMb9SVYwwmsCFzjXGnhSxxuY/M/pdfsRvYdzef4WhWS09mD7sc7nzW4tVfOoiIiItavjxRPH4TbvAuFsoiLnaE5BWDHdoLRZHhcW8DZbLjkvEXmnpvprTU8o0exzP9pwcP+4V5uF7V6XKHrKBsgzMMjXn8rrxu83NPgvE2qtV7S+j2a/NQA4Ej9/tZGFZmrC1ZWlQrWpmFMKSiCpBeKwFILeh2nK1oa15AbfAQe03jhd6zf2SFpBAo3sa8Q8AjmJXZa11nAHvErICrDaO0nTCIOAAijZE218wzFmefaWpSQGR7WNtd2QvyBO7uW7S7OLibuDSJGRaON3uxhlrDQ4HZ8tFDWNIEOqatvN7T1d3HRSFzZBO6/jZajAs8YW+zZbQcnuJuwHDGDbrG42E9rS2p5LfZs2MFp7fsmxBsMmmzuyR2r5XI1GqrPxdIGJ+WjWOKjfXYP6VTG1bcTFttpWZ+8A02L2AFzm3IyAwgG+/ctl8UdjhtfK1iXfX6foITXBiP16/ORBAhfVGijSxK3pYlg2ZSOe4NaLn5DieAXV0mzWxi57R42yHcF4zDVMQerYcTp7rKxeKbT114LVpKMnM5DzKtXBrm4HNbh902OS+Y75D+SFnHP5LYwmDp4cHJMnUnU/oDkPvKwqtZ1QyVW1ewKWQW6vBwMZLfLTyXN7V6CSXxQyAj3XktcOeIZHy71197aeS+CbdoeeSldSpnUAeSlp4uuywcY4G68V25s2pZLgdTStt6t24g4e9ibdvgDkvW+idEYKCnjcLOLTI8cHSOL7HuuB4K0mLZLR2xXNiTpbeth7MTw0cQO4D+S7w7QCcpsLfN3DRR4qu6oBn1Nz88VaUjbMaOQWZEVtUkRERERERFVbSjs8O94WPeP5fJQ1CsKyHGwjfqO8KshfkiLLVUbainlgf6sjHMPLELX8NV+bqqnfHI6OQWc1zmvHBzThPmF+lqd1j3ryj0w7A6qZtWwdiazX20EjRr+00fuFQ1WyJWnsutlqFh/wAvyPUW74XnrSsmK30WIKQVcr6EGFmYsgWNpUwVyrbICmFIKAUmrlTBWOx8XWtDTa92k5+qb3zBBGmtxnZbzesvKGv6vHI/EcbmFzm4rsFz2h95fP3hmq/ZDSZW2BOTrgbxhI+ZHLjkrB4cOtc0tAD3WDg0ua7s3IJF2ki2Y1w7rBUKwmpAjQa99tO4a7wO8RvPXi2g/P8AXzTOzZZff71zn2Mbu26+MEXaSGZsAIGRN/Cy+U2ymlpc1znWIz7d7WeSGtJs49gd3JbBeCS0TODbm/baL52JOE9o5Zki5uNbL46ZpzdI92YyL3HKxzJIOhy14kKq19XLAJ+w8tB5EREXvEIcSNfngPb8YjRta61huObQCLgGxG452VtsuhdK4MYM95OjRxJ4KtxNv2RYDfcm5ve+fw8F2fQyMGKU29oC/Gzb28L/ALymaC6M0/j+lXxVY06ZcNVcUUMcDcDSCT6zjvPHl3KUlSNLF3jYLG+MKN1N9Y6MrQAPFYBpBxzEklSMzyMrNHJQ6knVx+JTEUso3VHP7RJXQaBoAsRphrpbeoOiG8ra6tGRXIA1OQXIZuATOdZWzsyKwL+GQ7zr/XNb2zY7kv4ZDv3rBUCwbG3u8VaQRBrQ0bv6K36FIUmBvj3rMqPzulZURFMuEREREREREVRWR4H33Oz8d4VusNRCHtLT4HgeKIq4OXzbGzI6ynkgk0eLA72uGbXDmDYrDiwktdqFtRS2Xi9BIMhfnTa2zpKeZ8Eos9hseBG5w5EWI71rAr3D0g9ExWxdZEAKhgy3dY3UxnnvB4968Pc0glrgQQSCCLEEZEEHQgqo9mUr6nB4oV2TvGvr9/ZTBU2lYgVMFRq+wrKFIFYwVIFeK002WdhWVq1wVkaVwV1K2mPWRstlpl6gZFxklMsqy+12Xovo9mxUbz/juHwii/VeTFy9U9HAAob31lkvyIbG35AHxXFSmA0lZ21IbQgcQrmZyjGk0gutGr21BCLySxs/M9o+AJzKyqbZdZY+gVoGKRIC4ut9ItIz1XOkPCNh+b8IVDtD0mPd/Y09ssnSPJz5sYBf/Ur7KFSLN8bKGCfZelvqL71ZUEOBuN2pGXIfqVx3o/hrKkCrrC2OHWKFrA3rf8R2K7gwbhfPXTXuWsMjrbhr+iv4XCOY7PUMncqmIqjsN+/p6qWzoLnrD4fUqyUQLZBSWiqiIiIiIiIiIiIiIiIi0q6kx2cPWGnMcCtCJ+45HeFeLSrKPF2m5O+fI/qiLBFLhK5Pp70FbVgz09mz27TdGzADK53P4O8DuI6VjjoRYjUFbNPLZckAiCpKVV9JwewwV+a54nRucyRpY9ps5rhYtPAhfWle99J+idNXNu8YJQLNmaBiHAOHtt5HwsvHuknRGqoiTIzFHfKVl3Mt82nkfiVWfTLbr6LCbQZVsbO4ce701VOCpArC0qYKiWq1yzAqeJYQVPEuYUocpEpdQxL4SvV10kBJJbL7T7WqI2lsc0jGk3LWOIF9L2WMhfMK9hUa7TUs7RSqNoTSC0k0rxwdI8g97b2Oq02xAaADuAWzgVrsHozU1brQx3F7F7uyxve/f3ZnkvRwCrOptpjMYA42VJhXpnQb0eE4amubZurKd2ruDpRuH4PjwXT9FuhFPRWkf97MPacOyw/4bN35jn3aLo7ukNm+J3BWGUt5WPisdm6tLTjx7uXn3L44l5wt/kArCnhDBYeJ4lKeAMFh4nisynWYiIiIiIiIiIiIiIiIiIiIiIiIsM0AdrruO8KtqYnt1zHEfXgrhERUbJSFsioBFnAEHIg5gjmFsS0TTmMvl8FqvpHDd8F4i5nbno7o6i7orwPP93bATzjOQ/ZsuI2p6Na2K5jwzN4scAfFjreRK9aFwsrZyFwabSrtHaFelYOkcDf3H2IX56rNmTxG0sMrPzxvaPiRYrVabr9KCoB1WCagp3+vDE780bD8wozQ5q+zbZ/yZ4GP0fyvznnwXwlfob/gVFr9lp/9pn6LNFQ07PUhib+WNg+QXPQHipDttv8Ap/69l+f6PZU0ptFDI/8AIxzh8QLLp9l+jeslsXtbC3i9wxd4a2/nZewmpA0WIzk6AnuXYoDeq1TbFU9kAeZ9PJctsj0d0kNnS3ndwf2WX/INf2iV1DZA0BrAGtGQa0WAHAAaLIKV7tTbzK2oqdrdBnxKla0DRZlSs+qZeZ7/AJ+FrRU5dm7Ief8AJbkbABYCwU0XSjREREREREREREREREREREREREREREREREREREUHMB1CxOpm8wthERaho+fko/YzxW6iItH7Cfe8lNtEN5J8ltovIRYG0zB7Pxz+azAL6i9RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf//Z'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 25,
            width: 200,
            child: Text(
              '  Limpeza',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
//------------------------------------------------------------------------------------------------------------------------
          //Segunda fileira de produtos
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://savegnagoio.vtexassets.com/arquivos/ids/372607/DETERGENTELIQUIDOYPE500MLCLEAR.jpg?v=638082790341630000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://savegnagoio.vtexassets.com/arquivos/ids/372607/DETERGENTELIQUIDOYPE500MLCLEAR.jpg?v=638082790341630000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://savegnagoio.vtexassets.com/arquivos/ids/372607/DETERGENTELIQUIDOYPE500MLCLEAR.jpg?v=638082790341630000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://savegnagoio.vtexassets.com/arquivos/ids/372607/DETERGENTELIQUIDOYPE500MLCLEAR.jpg?v=638082790341630000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://savegnagoio.vtexassets.com/arquivos/ids/372607/DETERGENTELIQUIDOYPE500MLCLEAR.jpg?v=638082790341630000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://savegnagoio.vtexassets.com/arquivos/ids/372607/DETERGENTELIQUIDOYPE500MLCLEAR.jpg?v=638082790341630000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 25,
            width: 200,
            child: Text(
              '  Padaria',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
//------------------------------------------------------------------------------------------------------------------------
          //Terceira fileira de produtos
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://redemix.vteximg.com.br/arquivos/ids/196218-1000-1000/7899679703663.jpg?v=637901193083700000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://redemix.vteximg.com.br/arquivos/ids/196218-1000-1000/7899679703663.jpg?v=637901193083700000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://redemix.vteximg.com.br/arquivos/ids/196218-1000-1000/7899679703663.jpg?v=637901193083700000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://redemix.vteximg.com.br/arquivos/ids/196218-1000-1000/7899679703663.jpg?v=637901193083700000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://redemix.vteximg.com.br/arquivos/ids/196218-1000-1000/7899679703663.jpg?v=637901193083700000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://redemix.vteximg.com.br/arquivos/ids/196218-1000-1000/7899679703663.jpg?v=637901193083700000'),
                            ),
                          ),
                          /*
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Brie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          */
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
