.class La/b/c/as;
.super La/b/k;


# direct methods
.method public constructor <init>()V
    .registers 8

    const v1, 0x2d0003

    const/4 v2, 0x1

    const/16 v0, 0x100

    new-array v3, v0, [La/b/b/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, La/b/k;-><init>(II[La/b/b/b;III)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
