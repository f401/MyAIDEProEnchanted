.class public Labcd/XO;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/qO;


# instance fields
.field private j6:[B


# direct methods
.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Labcd/XO;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p3, [B

    iput-object v0, p0, Labcd/XO;->j6:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public j6()[B
    .registers 2

    iget-object v0, p0, Labcd/XO;->j6:[B

    return-object v0
.end method
