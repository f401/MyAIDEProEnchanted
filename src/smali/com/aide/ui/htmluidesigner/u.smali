.class Lcom/aide/ui/htmluidesigner/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/htmluidesigner/v;-><init>()V
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
.field final FH:Lcom/aide/ui/htmluidesigner/v;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/htmluidesigner/u;

    const-wide v2, -0x45c6a7de038d33L

    const-wide v4, -0x8f09773c4fba668L    # -3.164840800424213E265

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/htmluidesigner/v;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/u;->FH:Lcom/aide/ui/htmluidesigner/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1973e47c99288489L
    .end annotation

    const-wide v2, -0x445fee6d01658400L    # -1.701334412210543E-21

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/u;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x445fee6d01658400L    # -1.701334412210543E-21

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/u;->FH:Lcom/aide/ui/htmluidesigner/v;

    invoke-static {v0}, Lcom/aide/ui/htmluidesigner/v;->j6(Lcom/aide/ui/htmluidesigner/v;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/u;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
