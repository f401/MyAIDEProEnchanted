.class Labcd/xJ$d$b;
.super Labcd/RK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/xJ$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final Hw:Labcd/xJ$d;


# direct methods
.method constructor <init>(Labcd/xJ$d;)V
    .registers 3

    iput-object p1, p0, Labcd/xJ$d$b;->Hw:Labcd/xJ$d;

    invoke-static {p1}, Labcd/xJ$d;->j6(Labcd/xJ$d;)Labcd/xJ;

    move-result-object v0

    invoke-static {v0}, Labcd/xJ;->j6(Labcd/xJ;)Labcd/xJ$b;

    move-result-object v0

    iget v0, v0, Labcd/xJ$b;->j6:I

    invoke-direct {p0, v0}, Labcd/RK;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected Hw()Ljava/io/OutputStream;
    .registers 3

    iget-object v0, p0, Labcd/xJ$d$b;->Hw:Labcd/xJ$d;

    invoke-virtual {v0}, Labcd/xJ$d;->DW()V

    iget-object v0, p0, Labcd/xJ$d$b;->Hw:Labcd/xJ$d;

    iget-object v0, v0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    iget-object v0, p0, Labcd/xJ$d$b;->Hw:Labcd/xJ$d;

    iget-object v0, v0, Labcd/xJ$d;->VH:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
