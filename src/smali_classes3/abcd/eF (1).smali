.class enum Labcd/eF;
.super Labcd/iF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/iF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/iF;-><init>(Ljava/lang/String;ILabcd/iF;)V

    return-void
.end method


# virtual methods
.method public Hw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
