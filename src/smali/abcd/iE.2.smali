.class Labcd/iE;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/gE$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LgE$b",
        "<",
        "Labcd/jE;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/gE;)Labcd/jE;
    .registers 4

    new-instance v0, Labcd/jE;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Labcd/jE;-><init>(Labcd/gE;Labcd/jE;)V

    return-object v0
.end method

.method public bridge synthetic j6(Labcd/gE;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/iE;->j6(Labcd/gE;)Labcd/jE;

    move-result-object v0

    return-object v0
.end method
