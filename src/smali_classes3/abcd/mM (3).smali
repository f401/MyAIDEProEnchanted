.class public Labcd/mM;
.super Labcd/xL;


# static fields
.field private static final DW:[B

.field public static final j6:Labcd/mM;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/mM;

    invoke-direct {v0}, Labcd/mM;-><init>()V

    sput-object v0, Labcd/mM;->j6:Labcd/mM;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Labcd/mM;->DW:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/xL;-><init>()V

    return-void
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/4 v0, 0x5

    sget-object v1, Labcd/mM;->DW:[B

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method v5()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
