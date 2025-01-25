.class Labcd/K$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public EQ:I
    .annotation runtime Labcd/ru;
        field = 0x1b2e4fc2bede8ec3L
    .end annotation
.end field

.field public FH:I
    .annotation runtime Labcd/ru;
        field = 0x4f8c21220426042bL
    .end annotation
.end field

.field public Hw:J
    .annotation runtime Labcd/ru;
        field = 0x1a4e7bab282d35b8L
    .end annotation
.end field

.field public VH:I
    .annotation runtime Labcd/ru;
        field = -0x365ca4fbcf42415dL
    .end annotation
.end field

.field public Zo:I
    .annotation runtime Labcd/ru;
        field = 0x13e55159cff97787L
    .end annotation
.end field

.field public gn:I
    .annotation runtime Labcd/ru;
        field = -0x44ed78a98acf24bL
    .end annotation
.end field

.field public tp:I
    .annotation runtime Labcd/ru;
        field = -0x1c1094006f7ddf68L
    .end annotation
.end field

.field public u7:I
    .annotation runtime Labcd/ru;
        field = 0x28c29d81ccee8fa0L
    .end annotation
.end field

.field public v5:I
    .annotation runtime Labcd/ru;
        field = 0xa327ee6d0fbcba4L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/K$a;

    const-wide v1, -0x370b818d5701a58L  # -9.754941155190714E291

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x74d313779e30b70L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x475dfc7c2d38a84L

    :try_start_6
    sget-boolean v3, Labcd/K$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/K$a;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method synthetic constructor <init>(Labcd/J;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x300b5055fb3e0150L  # -1.497060581304053E77

    :try_start_6
    sget-boolean v3, Labcd/K$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/K$a;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/K$a;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public j6(Labcd/K$a;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2bb8844efe8366fbL
    .end annotation

    const-wide v0, -0x4faca43635ff6a2fL  # -6.687347273681424E-76

    :try_start_5
    sget-boolean v2, Labcd/K$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_4d

    iget v2, p0, Labcd/K$a;->FH:I

    iget v3, p1, Labcd/K$a;->FH:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/K$a;->FH:I

    iget-wide v2, p0, Labcd/K$a;->Hw:J

    iget-wide v4, p1, Labcd/K$a;->Hw:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/K$a;->Hw:J

    iget v2, p0, Labcd/K$a;->v5:I

    iget v3, p1, Labcd/K$a;->v5:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/K$a;->v5:I

    iget v2, p0, Labcd/K$a;->Zo:I

    iget v3, p1, Labcd/K$a;->Zo:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/K$a;->Zo:I

    iget v2, p0, Labcd/K$a;->VH:I

    iget v3, p1, Labcd/K$a;->VH:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/K$a;->VH:I

    iget v2, p0, Labcd/K$a;->gn:I

    iget v3, p1, Labcd/K$a;->gn:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/K$a;->gn:I

    iget v2, p0, Labcd/K$a;->u7:I

    iget v3, p1, Labcd/K$a;->u7:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/K$a;->u7:I

    iget v2, p0, Labcd/K$a;->tp:I

    iget v3, p1, Labcd/K$a;->tp:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/K$a;->tp:I

    iget v2, p0, Labcd/K$a;->EQ:I

    iget v3, p1, Labcd/K$a;->EQ:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/K$a;->EQ:I
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4e

    :cond_4d
    return-void

    :catchall_4e
    move-exception v2

    sget-boolean v3, Labcd/K$a;->DW:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v2
.end method
