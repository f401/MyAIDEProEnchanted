.class public final Labcd/Rt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/St;


# instance fields
.field private DW:I

.field private final j6:[B


# direct methods
.method public varargs constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rt;->j6:[B

    return-void
.end method


# virtual methods
.method public readByte()B
    .registers 4

    iget-object v0, p0, Labcd/Rt;->j6:[B

    iget v1, p0, Labcd/Rt;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/Rt;->DW:I

    aget-byte v0, v0, v1

    return v0
.end method
