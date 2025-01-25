.class Lcom/s1243808733/aide/util/QuickKey$1;
.super Ljava/lang/Object;
.source "QuickKey.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/QuickKey;->showDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;

.field final val$keys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/s1243808733/aide/util/QuickKey$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/s1243808733/aide/util/QuickKey$1;->val$keys:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 53
    iget-object p1, p0, Lcom/s1243808733/aide/util/QuickKey$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/s1243808733/aide/util/QuickKey$1;->val$keys:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Lcom/s1243808733/aide/util/QuickKey;->showModifyKeyDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
