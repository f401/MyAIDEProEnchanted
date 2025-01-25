.class Lcom/s1243808733/aide/functions/installer/ShellInstall$Error;
.super Ljava/lang/Object;
.source "ShellInstall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/functions/installer/ShellInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Error"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field final this$0:Lcom/s1243808733/aide/functions/installer/ShellInstall;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/functions/installer/ShellInstall;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 213
    iput-object p1, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$Error;->this$0:Lcom/s1243808733/aide/functions/installer/ShellInstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$Error;->title:Ljava/lang/String;

    .line 215
    iput-object p3, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$Error;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 220
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$Error;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$Error;->content:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
