.class Labcd/RI;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/gE$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/SI$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LgE$b<",
        "Labcd/SI$a;",
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
.method public j6(Labcd/gE;)Labcd/SI$a;
    .registers 3

    new-instance v0, Labcd/SI$a;

    invoke-direct {v0, p1}, Labcd/SI$a;-><init>(Labcd/gE;)V

    return-object v0
.end method

.method public bridge synthetic j6(Labcd/gE;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/RI;->j6(Labcd/gE;)Labcd/SI$a;

    move-result-object p1

    return-object p1
.end method
