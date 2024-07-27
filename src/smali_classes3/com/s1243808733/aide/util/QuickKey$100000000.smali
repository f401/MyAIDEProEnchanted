.class Lcom/s1243808733/aide/util/QuickKey$100000000;
.super Ljava/lang/Object;
.source "QuickKey.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final val$activity:Landroid/app/Activity;

.field private final val$keys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/QuickKey$100000000;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/s1243808733/aide/util/QuickKey$100000000;->val$keys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/s1243808733/aide/util/QuickKey$100000000;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/s1243808733/aide/util/QuickKey$100000000;->val$keys:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/QuickKey;->showModifyKeyDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
