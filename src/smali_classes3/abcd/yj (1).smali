.class Labcd/yj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj;->j6(Ljava/lang/String;II)V
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

.field final Hw:I

.field final Zo:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x201ef30e74f91a7L

    const-wide v2, 0x40062aef1c23280L

    const-class v4, Labcd/yj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj;Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, Labcd/yj;->Zo:Labcd/Kj;

    iput-object p2, p0, Labcd/yj;->FH:Ljava/lang/String;

    iput p3, p0, Labcd/yj;->Hw:I

    iput p4, p0, Labcd/yj;->v5:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xa426e151be76051L
    .end annotation

    const-wide v0, -0x7f10dd82d144090L

    :try_start_5
    sget-boolean v2, Labcd/yj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/yj;->Zo:Labcd/Kj;

    iget-object v3, p0, Labcd/yj;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Labcd/Kj;->FH(Labcd/Kj;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Labcd/yj;->Zo:Labcd/Kj;

    iget v3, p0, Labcd/yj;->Hw:I

    invoke-static {v2, v3}, Labcd/Kj;->FH(Labcd/Kj;I)I

    iget-object v2, p0, Labcd/yj;->Zo:Labcd/Kj;

    iget v3, p0, Labcd/yj;->v5:I

    invoke-static {v2, v3}, Labcd/Kj;->DW(Labcd/Kj;I)I

    iget-object v2, p0, Labcd/yj;->Zo:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->Hw(Labcd/Kj;)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/yj;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method
