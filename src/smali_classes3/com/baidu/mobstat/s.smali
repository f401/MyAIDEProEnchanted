.class public abstract enum Lcom/baidu/mobstat/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/s;

.field public static final enum b:Lcom/baidu/mobstat/s;

.field public static final enum c:Lcom/baidu/mobstat/s;

.field public static final enum d:Lcom/baidu/mobstat/s;

.field private static final f:[Lcom/baidu/mobstat/s;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 16
    new-instance v0, Lcom/baidu/mobstat/s$1;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/mobstat/s$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/s;

    .line 37
    new-instance v0, Lcom/baidu/mobstat/s$2;

    const-string v1, "NO_SERVICE"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mobstat/s$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/s;->b:Lcom/baidu/mobstat/s;

    .line 54
    new-instance v0, Lcom/baidu/mobstat/s$3;

    const-string v1, "RECEIVER"

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/mobstat/s$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/s;->c:Lcom/baidu/mobstat/s;

    .line 71
    new-instance v0, Lcom/baidu/mobstat/s$4;

    const-string v1, "ERISED"

    invoke-direct {v0, v1, v4, v6}, Lcom/baidu/mobstat/s$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/s;->d:Lcom/baidu/mobstat/s;

    .line 14
    new-array v0, v6, [Lcom/baidu/mobstat/s;

    sget-object v1, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/s;->b:Lcom/baidu/mobstat/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/s;->c:Lcom/baidu/mobstat/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/s;->d:Lcom/baidu/mobstat/s;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mobstat/s;->f:[Lcom/baidu/mobstat/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Lcom/baidu/mobstat/s;->e:I

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/baidu/mobstat/s$1;)V
    .registers 5

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/s;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(I)Lcom/baidu/mobstat/s;
    .registers 6

    .line 106
    invoke-static {}, Lcom/baidu/mobstat/s;->values()[Lcom/baidu/mobstat/s;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 107
    iget v4, v0, Lcom/baidu/mobstat/s;->e:I

    if-ne v4, p0, :cond_0

    .line 112
    :goto_1
    return-object v0

    .line 106
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 112
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/s;->b:Lcom/baidu/mobstat/s;

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    .line 116
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 117
    if-eqz v0, :cond_1

    .line 120
    const v2, 0x7fffffff

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    move v2, v1

    .line 121
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 122
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 123
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v4, "com.baidu.bottom.service.BottomService"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 133
    :goto_1
    return v0

    .line 121
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    .line 133
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/s;
    .registers 2

    .line 14
    const-class v0, Lcom/baidu/mobstat/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/s;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/s;
    .registers 1

    .line 14
    sget-object v0, Lcom/baidu/mobstat/s;->f:[Lcom/baidu/mobstat/s;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/s;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 100
    iget v0, p0, Lcom/baidu/mobstat/s;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
