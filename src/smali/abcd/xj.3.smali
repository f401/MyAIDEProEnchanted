.class Labcd/xj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj;->DW(I)V
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
.field final FH:I

.field final Hw:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/xj;

    const-wide v2, 0x201ef30e74f91a7L

    const-wide v4, 0x4004f2cd8b9c1a1L    # 2.091938499299935E-289

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj;I)V
    .registers 3

    iput-object p1, p0, Labcd/xj;->Hw:Labcd/Kj;

    iput p2, p0, Labcd/xj;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x87c9522909390b8L
    .end annotation

    const-wide v2, 0x138333c0a767ac5L

    :try_start_0
    sget-boolean v0, Labcd/xj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x138333c0a767ac5L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/xj;->Hw:Labcd/Kj;

    iget v1, p0, Labcd/xj;->FH:I

    invoke-static {v0, v1}, Labcd/Kj;->DW(Labcd/Kj;I)I

    iget-object v0, p0, Labcd/xj;->Hw:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->Hw(Labcd/Kj;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/xj;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
