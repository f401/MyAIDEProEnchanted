.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$1;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .registers 4

    return-void
.end method
