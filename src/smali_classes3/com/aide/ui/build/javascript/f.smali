.class Lcom/aide/ui/build/javascript/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/javascript/h;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
        ">;"
    }
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
.field final FH:Landroid/webkit/JsPromptResult;

.field final Hw:Lcom/aide/ui/build/javascript/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x5d52d0ed077f657cL  # 3.585155351576895E141

    const-wide v2, 0x1bffb72507cd96c0L  # 8.014433476787943E-174

    const-class v4, Lcom/aide/ui/build/javascript/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/javascript/h;Landroid/webkit/JsPromptResult;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/javascript/f;->Hw:Lcom/aide/ui/build/javascript/h;

    iput-object p2, p0, Lcom/aide/ui/build/javascript/f;->FH:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/build/javascript/f;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x18984472a58a5a58L
    .end annotation

    const-wide v0, 0x3f50f03735b70927L  # 0.00103383437713995

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/javascript/f;->FH:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/f;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method
