.class Lcom/aide/ui/build/javascript/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/javascript/h;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
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
.field final FH:Landroid/webkit/JsResult;

.field final Hw:Lcom/aide/ui/build/javascript/h;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/javascript/c;

    const-wide v2, 0x5d52d0ed077f657cL    # 3.585155351576895E141

    const-wide v4, 0x1bfe7b33f4bd1167L    # 7.702566423862919E-174

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/javascript/h;Landroid/webkit/JsResult;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/javascript/c;->Hw:Lcom/aide/ui/build/javascript/h;

    iput-object p2, p0, Lcom/aide/ui/build/javascript/c;->FH:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1fd7120fc321601bL
    .end annotation

    const-wide v2, 0x1129a724e1da4c91L    # 5.414393850141356E-226

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/javascript/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1129a724e1da4c91L    # 5.414393850141356E-226

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/javascript/c;->FH:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/javascript/c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
