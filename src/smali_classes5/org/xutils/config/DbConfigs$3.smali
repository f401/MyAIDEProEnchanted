.class final Lorg/xutils/config/DbConfigs$3;
.super Ljava/lang/Object;
.source "DbConfigs.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/config/DbConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .registers 6

    .line 45
    :try_start_0
    invoke-interface {p1}, Lorg/xutils/DbManager;->dropDb()V
    :try_end_3
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_3} :catch_4

    .line 49
    :goto_3
    return-void

    .line 46
    :catch_4
    move-exception v0

    .line 47
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
