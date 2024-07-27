.class Labcd/dk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/lk;->j6(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/lk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/dk;

    const-wide v2, -0xbb50e75b5edbbb3L    # -1.543265553544348E252

    const-wide v4, -0x662ec7d392a1708L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/lk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/dk;->v5:Labcd/lk;

    iput-object p2, p0, Labcd/dk;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/dk;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x17ec5ad64d47da18L
    .end annotation

    const-wide v4, 0x4ce0bef8cdd7835bL    # 2.152780695672449E62

    :try_start_0
    sget-boolean v0, Labcd/dk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4ce0bef8cdd7835bL    # 2.152780695672449E62

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/dk;->v5:Labcd/lk;

    iget-object v1, p0, Labcd/dk;->FH:Ljava/lang/String;

    iget-object v2, p0, Labcd/dk;->Hw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Labcd/lk;->j6(Labcd/lk;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
