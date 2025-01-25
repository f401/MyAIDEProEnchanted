.class final Lcom/google/android/gms/internal/ads/Uw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Qw;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Nw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/Nw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uw;->j6:Lcom/google/android/gms/internal/ads/Nw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Nw;Lcom/google/android/gms/internal/ads/Pw;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Uw;-><init>(Lcom/google/android/gms/internal/ads/Nw;)V

    return-void
.end method


# virtual methods
.method public final j6([B[B)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Uw;->j6:Lcom/google/android/gms/internal/ads/Nw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Ej:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/Nw;->sg:I

    xor-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->CU:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->CU:I

    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    iput v5, v1, Lcom/google/android/gms/internal/ads/Nw;->qU:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/Nw;->b1:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/Nw;->qU:I

    or-int v7, v5, v6

    iput v7, v1, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/Nw;->Nh:I

    xor-int/lit8 v9, v8, -0x1

    and-int/2addr v7, v9

    iput v7, v1, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/Nw;->fP:I

    xor-int/2addr v7, v4

    iput v7, v1, Lcom/google/android/gms/internal/ads/Nw;->fP:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/Nw;->fP:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    xor-int/2addr v9, v7

    iput v9, v1, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->pn:I

    xor-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/Nw;->pn:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    xor-int/2addr v7, v9

    iput v7, v1, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/Nw;->PH:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    and-int/2addr v9, v7

    iput v9, v1, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    xor-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    xor-int v9, v4, v5

    iput v9, v1, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    and-int/2addr v9, v8

    iput v9, v1, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    xor-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    and-int v10, v7, v9

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/Nw;->hz:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    or-int/2addr v10, v9

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v10, v11

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/Nw;->rN:I

    xor-int/2addr v10, v11

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->rN:I

    or-int v10, v5, v4

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v11, v2

    iput v11, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/2addr v11, v12

    iput v11, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v11, v7

    iput v11, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/2addr v11, v12

    iput v11, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/lit8 v12, v9, -0x1

    and-int/2addr v11, v12

    iput v11, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/lit8 v11, v5, -0x1

    and-int v12, v11, v4

    iput v12, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/2addr v12, v3

    iput v12, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/lit8 v12, v12, -0x1

    and-int/2addr v12, v8

    iput v12, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->nw:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v10, v12

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v10, v8

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    xor-int/lit8 v12, v2, -0x1

    and-int/2addr v10, v12

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->ko:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    xor-int/2addr v10, v12

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    xor-int/2addr v10, v12

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    xor-int/2addr v10, v12

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->TI:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    or-int v13, v10, v12

    iput v13, v1, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/Nw;->b:I

    iget v14, v1, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    xor-int/2addr v14, v13

    iput v14, v1, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v14, v1, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/Nw;->Eq:I

    xor-int/2addr v14, v15

    iput v14, v1, Lcom/google/android/gms/internal/ads/Nw;->Eq:I

    and-int/2addr v10, v12

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    xor-int/2addr v10, v13

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/Nw;->br:I

    xor-int/2addr v10, v12

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->br:I

    xor-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Ej:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Ej:I

    and-int v10, v11, v2

    iput v10, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    xor-int/2addr v4, v10

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/2addr v4, v10

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v7

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    or-int v4, v5, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    xor-int/2addr v4, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v4, v10

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    and-int/2addr v4, v7

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    xor-int/2addr v4, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    and-int/2addr v4, v8

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    and-int/2addr v4, v7

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    xor-int/2addr v4, v6

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    or-int/2addr v4, v9

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->pn:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    xor-int/2addr v4, v6

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/Nw;->Zo:I

    xor-int/2addr v4, v6

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->Zo:I

    xor-int v4, v2, v5

    iput v4, v1, Lcom/google/android/gms/internal/ads/Nw;->b1:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->b1:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/Nw;->QX:I

    xor-int/2addr v5, v4

    iput v5, v1, Lcom/google/android/gms/internal/ads/Nw;->QX:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/Nw;->QX:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/2addr v5, v6

    iput v5, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/Nw;->S4:I

    xor-int/2addr v5, v6

    iput v5, v1, Lcom/google/android/gms/internal/ads/Nw;->S4:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/Nw;->S4:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    xor-int/2addr v5, v6

    iput v5, v1, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    xor-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    xor-int/2addr v2, v5

    iput v2, v1, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    and-int/2addr v2, v8

    iput v2, v1, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    xor-int/2addr v2, v4

    iput v2, v1, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v2, v4

    iput v2, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/2addr v2, v4

    iput v2, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/Nw;->Jm:I

    xor-int/2addr v2, v4

    iput v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Jm:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->iW:I

    const/4 v4, 0x0

    int-to-byte v5, v2

    aput-byte v5, p2, v4

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, p2, v5

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, p2, v5

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    const/16 v5, 0x18

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/4 v6, 0x3

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->sv:I

    const/4 v6, 0x4

    int-to-byte v9, v2

    aput-byte v9, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/4 v9, 0x5

    aput-byte v6, p2, v9

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/4 v9, 0x6

    aput-byte v6, p2, v9

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/4 v6, 0x7

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    int-to-byte v6, v2

    const/16 v9, 0x8

    aput-byte v6, p2, v9

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v9, 0x9

    aput-byte v6, p2, v9

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v9, 0xa

    aput-byte v6, p2, v9

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0xb

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->gG:I

    const/16 v6, 0xc

    int-to-byte v9, v2

    aput-byte v9, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v9, 0xd

    aput-byte v6, p2, v9

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v9, 0xe

    aput-byte v6, p2, v9

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0xf

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Zo:I

    int-to-byte v6, v2

    const/16 v9, 0x10

    aput-byte v6, p2, v9

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v9, 0x11

    aput-byte v6, p2, v9

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v9, 0x12

    aput-byte v6, p2, v9

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x13

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->v5:I

    const/16 v6, 0x14

    int-to-byte v9, v2

    aput-byte v9, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v9, 0x15

    aput-byte v6, p2, v9

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v9, 0x16

    aput-byte v6, p2, v9

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x17

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->gn:I

    int-to-byte v6, v2

    aput-byte v6, p2, v5

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v9, 0x19

    aput-byte v6, p2, v9

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v9, 0x1a

    aput-byte v6, p2, v9

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x1b

    aput-byte v2, p2, v6

    const/16 v2, 0x1c

    int-to-byte v6, v7

    aput-byte v6, p2, v2

    ushr-int/lit8 v2, v7, 0x8

    int-to-byte v2, v2

    const/16 v6, 0x1d

    aput-byte v2, p2, v6

    ushr-int/lit8 v2, v7, 0x10

    int-to-byte v2, v2

    const/16 v6, 0x1e

    aput-byte v2, p2, v6

    and-int v2, v7, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x1f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->tp:I

    const/16 v6, 0x20

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x21

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x22

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x23

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->ir:I

    const/16 v6, 0x24

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x25

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x26

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x27

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->E4:I

    const/16 v6, 0x28

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x29

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x2a

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x2b

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->EQ:I

    const/16 v6, 0x2c

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x2d

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x2e

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x2f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Z1:I

    const/16 v6, 0x30

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x31

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x32

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x33

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->GK:I

    const/16 v6, 0x34

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x35

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x36

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x37

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->e9:I

    const/16 v6, 0x38

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x39

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x3a

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x3b

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Ws:I

    const/16 v6, 0x3c

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x3d

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x3e

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x3f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Jm:I

    const/16 v6, 0x40

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x41

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x42

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x43

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->IS:I

    const/16 v6, 0x44

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x45

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x46

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x47

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->jO:I

    const/16 v6, 0x48

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x49

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x4a

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x4b

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->ys:I

    const/16 v6, 0x4c

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x4d

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x4e

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x4f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->a8:I

    const/16 v6, 0x50

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x51

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x52

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x53

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->U2:I

    const/16 v6, 0x54

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x55

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x56

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x57

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->rN:I

    const/16 v6, 0x58

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x59

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x5a

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x5b

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->lg:I

    const/16 v6, 0x5c

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x5d

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x5e

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x5f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->dW:I

    const/16 v6, 0x60

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x61

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x62

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x63

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Od:I

    const/16 v6, 0x64

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x65

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x66

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x67

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->q7:I

    const/16 v6, 0x68

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x69

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x6a

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x6b

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->gW:I

    const/16 v6, 0x6c

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x6d

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x6e

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x6f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->P8:I

    const/16 v6, 0x70

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x71

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x72

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x73

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->ca:I

    const/16 v6, 0x74

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x75

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x76

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x77

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Hl:I

    const/16 v6, 0x78

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x79

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x7a

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x7b

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Za:I

    const/16 v6, 0x7c

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x7d

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x7e

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x7f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->An:I

    const/16 v6, 0x80

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x81

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x82

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x83

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->SI:I

    const/16 v6, 0x84

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x85

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x86

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x87

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Cz:I

    const/16 v6, 0x88

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x89

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x8a

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x8b

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->qI:I

    const/16 v6, 0x8c

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x8d

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x8e

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x8f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->cb:I

    const/16 v6, 0x90

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x91

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x92

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x93

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->HO:I

    const/16 v6, 0x94

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x95

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x96

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x97

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->N0:I

    const/16 v6, 0x98

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x99

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x9a

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x9b

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->sy:I

    const/16 v6, 0x9c

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x9d

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x9e

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0x9f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Sf:I

    const/16 v6, 0xa0

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0xa1

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0xa2

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0xa3

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->u7:I

    const/16 v6, 0xa4

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0xa5

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0xa6

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0xa7

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->yO:I

    const/16 v6, 0xa8

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0xa9

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0xaa

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0xab

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->OW:I

    const/16 v6, 0xac

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0xad

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0xae

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0xaf

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->I:I

    const/16 v6, 0xb0

    int-to-byte v7, v2

    aput-byte v7, p2, v6

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    const/16 v7, 0xb1

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    const/16 v7, 0xb2

    aput-byte v6, p2, v7

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v6, 0xb3

    aput-byte v2, p2, v6

    const/16 v2, 0xb4

    int-to-byte v6, v3

    aput-byte v6, p2, v2

    ushr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    const/16 v6, 0xb5

    aput-byte v2, p2, v6

    ushr-int/lit8 v2, v3, 0x10

    int-to-byte v2, v2

    const/16 v6, 0xb6

    aput-byte v2, p2, v6

    and-int v2, v3, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xb7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->x9:I

    const/16 v3, 0xb8

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xb9

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xba

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xbb

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Ev:I

    const/16 v3, 0xbc

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xbd

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xbe

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xbf

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->we:I

    const/16 v3, 0xc0

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xc1

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xc2

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xc3

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->kf:I

    const/16 v3, 0xc4

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xc5

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xc6

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xc7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->lp:I

    const/16 v3, 0xc8

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xc9

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xca

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xcb

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->hK:I

    const/16 v3, 0xcc

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xcd

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xce

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xcf

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->br:I

    const/16 v3, 0xd0

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xd1

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xd2

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xd3

    aput-byte v2, p2, v3

    const/16 v2, 0xd4

    int-to-byte v3, v8

    aput-byte v3, p2, v2

    ushr-int/lit8 v2, v8, 0x8

    int-to-byte v2, v2

    const/16 v3, 0xd5

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v8, 0x10

    int-to-byte v2, v2

    const/16 v3, 0xd6

    aput-byte v2, p2, v3

    and-int v2, v8, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xd7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->kQ:I

    const/16 v3, 0xd8

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xd9

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xda

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xdb

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Mz:I

    const/16 v3, 0xdc

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xdd

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xde

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xdf

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->HT:I

    const/16 v3, 0xe0

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xe1

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xe2

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xe3

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Yi:I

    const/16 v3, 0xe4

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xe5

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xe6

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xe7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->PT:I

    const/16 v3, 0xe8

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xe9

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xea

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xeb

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->RW:I

    const/16 v3, 0xec

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xed

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xee

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xef

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->k1:I

    const/16 v3, 0xf0

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xf1

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xf2

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xf3

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->cT:I

    const/16 v3, 0xf4

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xf5

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xf6

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xf7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/Nw;->Eq:I

    const/16 v3, 0xf8

    int-to-byte v6, v2

    aput-byte v6, p2, v3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xf9

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v6, 0xfa

    aput-byte v3, p2, v6

    and-int/2addr v2, v4

    ushr-int/2addr v2, v5

    int-to-byte v2, v2

    const/16 v3, 0xfb

    aput-byte v2, p2, v3

    iget v1, v1, Lcom/google/android/gms/internal/ads/Nw;->Jl:I

    const/16 v2, 0xfc

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    ushr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    const/16 v3, 0xfd

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    const/16 v3, 0xfe

    aput-byte v2, p2, v3

    and-int/2addr v1, v4

    ushr-int/2addr v1, v5

    int-to-byte v1, v1

    const/16 v2, 0xff

    aput-byte v1, p2, v2

    return-void
.end method
