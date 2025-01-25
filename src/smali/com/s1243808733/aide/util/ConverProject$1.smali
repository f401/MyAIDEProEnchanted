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
    .registers 3
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
    .registers 5

    .line 40
    new-instance p1, Lcom/s1243808733/aide/util/ConverProject;

    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$1;->val$project:Ljava/io/File;

    invoke-direct {p1, v0}, Lcom/s1243808733/aide/util/ConverProject;-><init>(Ljava/io/File;)V

    .line 41
    new-instance v0, Lcom/s1243808733/aide/util/ConverProject$1$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/util/ConverProject$1$1;-><init>(Lcom/s1243808733/aide/util/ConverProject$1;)V

    if-eqz p2, :cond_16

    const/4 v1, 0x1

    if-eq p2, v1, :cond_12

    goto :goto_19

    .line 66
    :cond_12
    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/util/ConverProject;->converToAndroidX(Lcom/s1243808733/aide/util/ConverProject$Listener;)V

    goto :goto_19

    .line 63
    :cond_16
    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/util/ConverProject;->converToAppCompat(Lcom/s1243808733/aide/util/ConverProject$Listener;)V

    :goto_19
    return-void
.end method
