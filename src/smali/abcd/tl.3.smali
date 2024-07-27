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
    .registers 6

    const-class v0, Labcd/tl;

    const-wide v2, -0x5917a8cc0b184c5L

    const-wide v4, 0xa31afca689beac4L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0x8f36da0ce20145cL

    :try_start_0
    sget-boolean v0, Labcd/tl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8f36da0ce20145cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/tl;->FH:Labcd/ul;

    invoke-static {v0}, Labcd/ul;->FH(Labcd/ul;)Labcd/ul$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/tl;->FH:Labcd/ul;

    invoke-static {v0}, Labcd/ul;->FH(Labcd/ul;)Labcd/ul$a;

    move-result-object v0

    invoke-interface {v0}, Labcd/ul$a;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/tl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
