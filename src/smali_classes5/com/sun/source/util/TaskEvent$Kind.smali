.class public final enum Lcom/sun/source/util/TaskEvent$Kind;
.super Ljava/lang/Enum;
.source "TaskEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/source/util/TaskEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/source/util/TaskEvent$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/source/util/TaskEvent$Kind;

.field public static final enum ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

.field public static final enum ANNOTATION_PROCESSING:Lcom/sun/source/util/TaskEvent$Kind;

.field public static final enum ANNOTATION_PROCESSING_ROUND:Lcom/sun/source/util/TaskEvent$Kind;

.field public static final enum ENTER:Lcom/sun/source/util/TaskEvent$Kind;

.field public static final enum GENERATE:Lcom/sun/source/util/TaskEvent$Kind;

.field public static final enum PARSE:Lcom/sun/source/util/TaskEvent$Kind;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/sun/source/util/TaskEvent$Kind;

    const-string v1, "PARSE"

    invoke-direct {v0, v1, v3}, Lcom/sun/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/source/util/TaskEvent$Kind;->PARSE:Lcom/sun/source/util/TaskEvent$Kind;

    .line 52
    new-instance v0, Lcom/sun/source/util/TaskEvent$Kind;

    const-string v1, "ENTER"

    invoke-direct {v0, v1, v4}, Lcom/sun/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/source/util/TaskEvent$Kind;->ENTER:Lcom/sun/source/util/TaskEvent$Kind;

    .line 56
    new-instance v0, Lcom/sun/source/util/TaskEvent$Kind;

    const-string v1, "ANALYZE"

    invoke-direct {v0, v1, v5}, Lcom/sun/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/source/util/TaskEvent$Kind;->ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

    .line 60
    new-instance v0, Lcom/sun/source/util/TaskEvent$Kind;

    const-string v1, "GENERATE"

    invoke-direct {v0, v1, v6}, Lcom/sun/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/source/util/TaskEvent$Kind;->GENERATE:Lcom/sun/source/util/TaskEvent$Kind;

    .line 64
    new-instance v0, Lcom/sun/source/util/TaskEvent$Kind;

    const-string v1, "ANNOTATION_PROCESSING"

    invoke-direct {v0, v1, v7}, Lcom/sun/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING:Lcom/sun/source/util/TaskEvent$Kind;

    .line 68
    new-instance v0, Lcom/sun/source/util/TaskEvent$Kind;

    const-string v1, "ANNOTATION_PROCESSING_ROUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sun/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING_ROUND:Lcom/sun/source/util/TaskEvent$Kind;

    .line 44
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sun/source/util/TaskEvent$Kind;

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->PARSE:Lcom/sun/source/util/TaskEvent$Kind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->ENTER:Lcom/sun/source/util/TaskEvent$Kind;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->GENERATE:Lcom/sun/source/util/TaskEvent$Kind;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING:Lcom/sun/source/util/TaskEvent$Kind;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/sun/source/util/TaskEvent$Kind;->$VALUES:[Lcom/sun/source/util/TaskEvent$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/source/util/TaskEvent$Kind;
    .registers 2

    .line 44
    const-class v0, Lcom/sun/source/util/TaskEvent$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/source/util/TaskEvent$Kind;

    return-object v0
.end method

.method public static values()[Lcom/sun/source/util/TaskEvent$Kind;
    .registers 1

    .line 44
    sget-object v0, Lcom/sun/source/util/TaskEvent$Kind;->$VALUES:[Lcom/sun/source/util/TaskEvent$Kind;

    invoke-virtual {v0}, [Lcom/sun/source/util/TaskEvent$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/source/util/TaskEvent$Kind;

    return-object v0
.end method
