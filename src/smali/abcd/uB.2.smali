.class enum Labcd/uB;
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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/AB$a;-><init>(Ljava/lang/String;ILabcd/AB$a;)V

    return-void
.end method


# virtual methods
.method public Hw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
