.class public final Lorg/a/a/a/a/z;
.super Lorg/a/a/a/a/bl;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/n;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/a/a/a/a/z;-><init>(Lorg/a/a/a/a/n;I)V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/a/n;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/a/a/bl;-><init>(Lorg/a/a/a/a/n;)V

    iput p2, p0, Lorg/a/a/a/a/z;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(III)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "epsilon"

    return-object v0
.end method
