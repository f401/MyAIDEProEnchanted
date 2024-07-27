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
    .registers 4

    const-wide v2, -0x370b818d5701a58L    # -9.754941155190714E291

    const-class v0, Labcd/K$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x74d313779e30b70L
    .end annotation

    const-wide v4, 0x475dfc7c2d38a84L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/K$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x475dfc7c2d38a84L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/K$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/J;)V
    .registers 8

    const-wide v4, -0x300b5055fb3e0150L    # -1.497060581304053E77

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/K$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x300b5055fb3e0150L    # -1.497060581304053E77

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/K$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/K$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6(Labcd/K$a;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2bb8844efe8366fbL
    .end annotation

    const-wide v4, -0x4faca43635ff6a2fL    # -6.687347273681424E-76

    :try_start_0
    sget-boolean v0, Labcd/K$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4faca43635ff6a2fL    # -6.687347273681424E-76

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Labcd/K$a;->FH:I

    iget v1, p1, Labcd/K$a;->FH:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/K$a;->FH:I

    iget-wide v0, p0, Labcd/K$a;->Hw:J

    iget-wide v2, p1, Labcd/K$a;->Hw:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/K$a;->Hw:J

    iget v0, p0, Labcd/K$a;->v5:I

    iget v1, p1, Labcd/K$a;->v5:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/K$a;->v5:I

    iget v0, p0, Labcd/K$a;->Zo:I

    iget v1, p1, Labcd/K$a;->Zo:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/K$a;->Zo:I

    iget v0, p0, Labcd/K$a;->VH:I

    iget v1, p1, Labcd/K$a;->VH:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/K$a;->VH:I

    iget v0, p0, Labcd/K$a;->gn:I

    iget v1, p1, Labcd/K$a;->gn:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/K$a;->gn:I

    iget v0, p0, Labcd/K$a;->u7:I

    iget v1, p1, Labcd/K$a;->u7:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/K$a;->u7:I

    iget v0, p0, Labcd/K$a;->tp:I

    iget v1, p1, Labcd/K$a;->tp:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/K$a;->tp:I

    iget v0, p0, Labcd/K$a;->EQ:I

    iget v1, p1, Labcd/K$a;->EQ:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/K$a;->EQ:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/K$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
