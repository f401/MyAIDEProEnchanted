.class Labcd/AI$a;
.super Labcd/AE$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/AI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/AE$a;"
    }
.end annotation


# instance fields
.field EQ:Labcd/AI$f;


# direct methods
.method constructor <init>(Labcd/YD;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/AE$a;-><init>(Labcd/YD;)V

    return-void
.end method


# virtual methods
.method aM()Labcd/AI$f;
    .registers 3

    iget-object v0, p0, Labcd/AI$a;->EQ:Labcd/AI$f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/AI$a;->EQ:Labcd/AI$f;

    :cond_0
    return-object v0
.end method

.method j6(Labcd/AI$f;)V
    .registers 3

    iget-object v0, p0, Labcd/AI$a;->EQ:Labcd/AI$f;

    iput-object v0, p1, Labcd/AI$f;->FH:Labcd/AI$f;

    iput-object p1, p0, Labcd/AI$a;->EQ:Labcd/AI$f;

    return-void
.end method
