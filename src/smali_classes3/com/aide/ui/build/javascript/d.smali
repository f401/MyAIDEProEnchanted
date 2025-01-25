.class Lcom/aide/ui/build/javascript/d;
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
    .registers 5

    const-wide v0, 0x5d52d0ed077f657cL  # 3.585155351576895E141

    const-wide v2, 0x1bfee484502f3d9cL

    const-class v4, Lcom/aide/ui/build/javascript/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/javascript/h;Landroid/webkit/JsResult;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/javascript/d;->Hw:Lcom/aide/ui/build/javascript/h;

    iput-object p2, p0, Lcom/aide/ui/build/javascript/d;->FH:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xe0211e8d1c8b021L
    .end annotation

    const-wide v0, 0x1135728a060e33f0L  # 9.053537157633142E-226

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/javascript/d;->FH:Landroid/webkit/JsResult;

    invoke-virtual {v2}, Landroid/webkit/JsResult;->cancel()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/d;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method
