.class public final enum Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;
.super Ljava/lang/Enum;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "AttributeKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

.field public static final enum CLASS:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

.field public static final enum MEMBER:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 963
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    const-string v1, "CLASS"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->CLASS:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    new-instance v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    const-string v1, "MEMBER"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->MEMBER:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    .line 962
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    sget-object v2, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->CLASS:Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->$VALUES:[Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 962
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;
    .registers 2

    .line 962
    const-class v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;
    .registers 1

    .line 962
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->$VALUES:[Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;

    return-object v0
.end method
