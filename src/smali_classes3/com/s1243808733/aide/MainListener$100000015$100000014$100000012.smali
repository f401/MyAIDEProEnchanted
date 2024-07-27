.class Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/MainListener$100000015$100000014;

.field private final val$g:Landroid/app/ProgressDialog;

.field private final val$out:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$100000015$100000014;Landroid/app/ProgressDialog;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;->this$0:Lcom/s1243808733/aide/MainListener$100000015$100000014;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;->val$g:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;->val$out:Ljava/io/File;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;)Lcom/s1243808733/aide/MainListener$100000015$100000014;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;->this$0:Lcom/s1243808733/aide/MainListener$100000015$100000014;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;->val$g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 627
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "\u9879\u76ee\u5df2\u5907\u4efd\u5230\uff1a"

    const-string v2, "Project to backup to "

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;->val$out:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
