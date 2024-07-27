.class Lcom/s1243808733/aide/util/ConverProject$100000001;
.super Ljava/lang/Object;
.source "ConverProject.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final val$act:Landroid/app/Activity;

.field private final val$project:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$100000001;->val$project:Ljava/io/File;

    iput-object p2, p0, Lcom/s1243808733/aide/util/ConverProject$100000001;->val$act:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 40
    new-instance v0, Lcom/s1243808733/aide/util/ConverProject;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ConverProject$100000001;->val$project:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ConverProject;-><init>(Ljava/io/File;)V

    .line 41
    new-instance v1, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;

    iget-object v2, p0, Lcom/s1243808733/aide/util/ConverProject$100000001;->val$act:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;-><init>(Lcom/s1243808733/aide/util/ConverProject$100000001;Landroid/app/Activity;)V

    .line 61
    packed-switch p2, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/util/ConverProject;->converToAppCompat(Lcom/s1243808733/aide/util/ConverProject$Listener;)V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/util/ConverProject;->converToAndroidX(Lcom/s1243808733/aide/util/ConverProject$Listener;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
