.class public final enum Lorg/xutils/common/task/AbsTask$State;
.super Ljava/lang/Enum;
.source "AbsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/AbsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xutils/common/task/AbsTask$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/xutils/common/task/AbsTask$State;

.field public static final enum CANCELLED:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum ERROR:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum IDLE:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum STARTED:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum SUCCESS:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum WAITING:Lorg/xutils/common/task/AbsTask$State;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 143
    new-instance v0, Lorg/xutils/common/task/AbsTask$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v9, v9}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/xutils/common/task/AbsTask$State;->IDLE:Lorg/xutils/common/task/AbsTask$State;

    new-instance v1, Lorg/xutils/common/task/AbsTask$State;

    const-string v2, "WAITING"

    invoke-direct {v1, v2, v10, v10}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    new-instance v2, Lorg/xutils/common/task/AbsTask$State;

    const-string v3, "STARTED"

    invoke-direct {v2, v3, v11, v11}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    new-instance v3, Lorg/xutils/common/task/AbsTask$State;

    const-string v4, "SUCCESS"

    invoke-direct {v3, v4, v12, v12}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/xutils/common/task/AbsTask$State;->SUCCESS:Lorg/xutils/common/task/AbsTask$State;

    new-instance v4, Lorg/xutils/common/task/AbsTask$State;

    const-string v5, "CANCELLED"

    invoke-direct {v4, v5, v13, v13}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    new-instance v5, Lorg/xutils/common/task/AbsTask$State;

    const-string v6, "ERROR"

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    .line 142
    const/4 v6, 0x6

    new-array v6, v6, [Lorg/xutils/common/task/AbsTask$State;

    aput-object v0, v6, v9

    aput-object v1, v6, v10

    aput-object v2, v6, v11

    aput-object v3, v6, v12

    aput-object v4, v6, v13

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lorg/xutils/common/task/AbsTask$State;->$VALUES:[Lorg/xutils/common/task/AbsTask$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p3, p0, Lorg/xutils/common/task/AbsTask$State;->value:I

    .line 148
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/common/task/AbsTask$State;
    .registers 2

    .line 142
    const-class v0, Lorg/xutils/common/task/AbsTask$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/task/AbsTask$State;

    return-object v0
.end method

.method public static values()[Lorg/xutils/common/task/AbsTask$State;
    .registers 1

    .line 142
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->$VALUES:[Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v0}, [Lorg/xutils/common/task/AbsTask$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/common/task/AbsTask$State;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 151
    iget v0, p0, Lorg/xutils/common/task/AbsTask$State;->value:I

    return v0
.end method
