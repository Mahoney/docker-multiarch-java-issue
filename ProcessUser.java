import java.io.IOException;

public class ProcessUser {
    public static void main(String[] args) throws IOException, InterruptedException {
        new ProcessBuilder("uname", "-a")
                .inheritIO()
                .start()
                .waitFor();
    }
}
