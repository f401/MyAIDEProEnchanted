.class Labcd/dz;
.super Labcd/gz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ez$a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgz",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final DW:Labcd/ez$a;


# direct methods
.method constructor <init>(Labcd/ez$a;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Labcd/dz;->DW:Labcd/ez$a;

    invoke-direct {p0, p2, p3}, Labcd/gz;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Hw()Labcd/_y;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "L_y",
            "<",
            "Labcd/lz;",
            ">;:",
            "Labcd/hz;",
            ":",
            "Labcd/lz;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/dz;->DW:Labcd/ez$a;

    invoke-static {v0}, Labcd/ez$a;->j6(Labcd/ez$a;)Labcd/ez;

    move-result-object v0

    return-object v0
.end method
