.class enum Labcd/xB;
.super Labcd/AB$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/AB$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/AB$a;-><init>(Ljava/lang/String;ILabcd/AB$a;)V

    return-void
.end method


# virtual methods
.method public Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
