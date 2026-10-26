.class Lcom/s1243808733/aide/util/ConverProject$1;
.super Ljava/lang/Object;
.source "ConverProject.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/ConverProject;->showDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$act:Landroid/app/Activity;

.field final val$project:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$1;->val$project:Ljava/io/File;

    iput-object p2, p0, Lcom/s1243808733/aide/util/ConverProject$1;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 40
    new-instance v0, Lcom/s1243808733/aide/util/ConverProject;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ConverProject$1;->val$project:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ConverProject;-><init>(Ljava/io/File;)V

    .line 41
    new-instance v1, Lcom/s1243808733/aide/util/ConverProject$1$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/util/ConverProject$1$1;-><init>(Lcom/s1243808733/aide/util/ConverProject$1;)V

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    .line 63
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/util/ConverProject;->converToAndroidX(Lcom/s1243808733/aide/util/ConverProject$Listener;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/util/ConverProject;->converToAppCompat(Lcom/s1243808733/aide/util/ConverProject$Listener;)V

    goto :goto_0
.end method
