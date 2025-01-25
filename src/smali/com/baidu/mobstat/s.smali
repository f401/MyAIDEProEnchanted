.class public abstract enum Lcom/baidu/mobstat/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 10

    .line 16
    new-instance v0, Lcom/baidu/mobstat/s$1;

    const-string v1, "SERVICE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mobstat/s$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/s;

    .line 37
    new-instance v1, Lcom/baidu/mobstat/s$2;

    const-string v4, "NO_SERVICE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/baidu/mobstat/s$2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mobstat/s;->b:Lcom/baidu/mobstat/s;

    .line 54
    new-instance v4, Lcom/baidu/mobstat/s$3;

    const-string v6, "RECEIVER"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/baidu/mobstat/s$3;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/baidu/mobstat/s;->c:Lcom/baidu/mobstat/s;

    .line 71
    new-instance v6, Lcom/baidu/mobstat/s$4;

    const-string v8, "ERISED"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/baidu/mobstat/s$4;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/baidu/mobstat/s;->d:Lcom/baidu/mobstat/s;

    .line 14
    new-array v8, v9, [Lcom/baidu/mobstat/s;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/baidu/mobstat/s;->f:[Lcom/baidu/mobstat/s;

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

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 107
    iget v4, v3, Lcom/baidu/mobstat/s;->e:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 112
    :cond_12
    sget-object p0, Lcom/baidu/mobstat/s;->b:Lcom/baidu/mobstat/s;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    .line 116
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_3c

    .line 120
    const v1, 0x7fffffff

    :try_start_e
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_13
    if-eqz p0, :cond_3c

    .line 121
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 122
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 123
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v3, "com.baidu.bottom.service.BottomService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2d} :catch_34

    if-eqz v2, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_34
    move-exception p0

    .line 129
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    :cond_3c
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/s;
    .registers 2

    .line 14
    const-class v0, Lcom/baidu/mobstat/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/s;

    return-object p0
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
