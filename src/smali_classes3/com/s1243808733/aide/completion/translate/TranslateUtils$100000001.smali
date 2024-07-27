.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000001;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
