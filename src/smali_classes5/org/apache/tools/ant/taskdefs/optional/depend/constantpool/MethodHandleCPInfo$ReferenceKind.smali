.class public final enum Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;
.super Ljava/lang/Enum;
.source "MethodHandleCPInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferenceKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_getField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_getStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_invokeInterface:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_invokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_invokeStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_invokeVirtual:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_newInvokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_putField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_putStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 36
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_getField"

    invoke-direct {v0, v1, v11}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_getField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 37
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v2, "REF_getStatic"

    invoke-direct {v1, v2, v12}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_getStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 38
    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v3, "REF_putField"

    invoke-direct {v2, v3, v13}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_putField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 39
    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v4, "REF_putStatic"

    invoke-direct {v3, v4, v14}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_putStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 40
    new-instance v4, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v5, "REF_invokeVirtual"

    invoke-direct {v4, v5, v15}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeVirtual:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 41
    new-instance v5, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v6, "REF_invokeStatic"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 42
    new-instance v6, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v7, "REF_invokeSpecial"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 43
    new-instance v7, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v8, "REF_newInvokeSpecial"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_newInvokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 44
    new-instance v8, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v9, "REF_invokeInterface"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeInterface:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 35
    const/16 v9, 0x9

    new-array v9, v9, [Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    aput-object v0, v9, v11

    aput-object v1, v9, v12

    aput-object v2, v9, v13

    aput-object v3, v9, v14

    aput-object v4, v9, v15

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    sput-object v9, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->$VALUES:[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;
    .registers 2

    .line 35
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;
    .registers 1

    .line 35
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->$VALUES:[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 47
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
