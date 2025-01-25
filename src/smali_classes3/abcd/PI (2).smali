.class Labcd/PI;
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

    iput-object p1, p0, Labcd/PI;->j6:Labcd/SI;

    invoke-direct {p0}, Labcd/SI$b;-><init>()V

    return-void
.end method


# virtual methods
.method j6(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Labcd/PI;->j6:Labcd/SI;

    invoke-static {v0}, Labcd/SI;->j6(Labcd/SI;)Labcd/EI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/EI;->j6(Ljava/lang/String;)V

    return-void
.end method
