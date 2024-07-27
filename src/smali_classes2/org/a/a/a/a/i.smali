.class Lorg/a/a/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/a/k;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a([CI)I
    .registers 4

    aget-char v0, p1, p2

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    return v0
.end method
