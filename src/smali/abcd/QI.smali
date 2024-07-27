.class Labcd/QI;
.super Labcd/SI$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/SI;->aM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/SI;


# direct methods
.method constructor <init>(Labcd/SI;)V
    .registers 2

    iput-object p1, p0, Labcd/QI;->j6:Labcd/SI;

    invoke-direct {p0}, Labcd/SI$b;-><init>()V

    return-void
.end method


# virtual methods
.method j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/QI;->j6:Labcd/SI;

    invoke-static {v0}, Labcd/SI;->DW(Labcd/SI;)Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
