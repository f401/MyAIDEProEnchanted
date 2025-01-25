.class enum Labcd/jB;
.super Labcd/pB$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/pB$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/pB$a;-><init>(Ljava/lang/String;ILabcd/pB$a;)V

    return-void
.end method


# virtual methods
.method public Hw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Fast-forward"

    return-object v0
.end method
