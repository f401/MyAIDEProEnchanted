.class public final Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttAnnotationDefault.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "AnnotationDefault"


# instance fields
.field private final byteLength:I

.field private final value:Lcom/s1243808733/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/Constant;I)V
    .registers 4

    .line 43
    const-string v0, "AnnotationDefault"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 49
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 50
    iput p2, p0, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;->byteLength:I

    return-void

    .line 46
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;->byteLength:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method
