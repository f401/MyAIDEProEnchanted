.class Labcd/wJ;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/gE$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/xJ;
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
        "Labcd/xJ$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/gE;)Labcd/xJ$b;
    .locals 1

    new-instance v0, Labcd/xJ$b;

    invoke-direct {v0, p1}, Labcd/xJ$b;-><init>(Labcd/gE;)V

    return-object v0
.end method

.method public bridge synthetic j6(Labcd/gE;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Labcd/wJ;->j6(Labcd/gE;)Labcd/xJ$b;

    move-result-object v0

    return-object v0
.end method
