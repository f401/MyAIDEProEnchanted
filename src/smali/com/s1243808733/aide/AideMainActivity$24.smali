.class Lcom/s1243808733/aide/AideMainActivity$24;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->showRequestWritePermissionDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    .line 1334
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$24;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1338
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$24;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/AideMainActivity;->-$$Nest$mrequestPermission(Lcom/s1243808733/aide/AideMainActivity;)V

    return-void
.end method
