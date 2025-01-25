.class Labcd/tl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ul;->Hw()V
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
.field final FH:Labcd/ul;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x5917a8cc0b184c5L

    const-wide v2, 0xa31afca689beac4L

    const-class v4, Labcd/tl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ul;)V
    .registers 2

    iput-object p1, p0, Labcd/tl;->FH:Labcd/ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x364bec9e694e17fL
    .end annotation

    const-wide v0, 0x8f36da0ce20145cL

    :try_start_5
    sget-boolean v2, Labcd/tl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/tl;->FH:Labcd/ul;

    invoke-static {v2}, Labcd/ul;->FH(Labcd/ul;)Labcd/ul$a;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Labcd/tl;->FH:Labcd/ul;

    invoke-static {v2}, Labcd/ul;->FH(Labcd/ul;)Labcd/ul$a;

    move-result-object v2

    invoke-interface {v2}, Labcd/ul$a;->FH()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/tl;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method
