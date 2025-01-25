.class public final Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttInnerClasses.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "InnerClasses"


# instance fields
.field private final innerClasses:Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;)V
    .registers 3

    .line 37
    const-string v0, "InnerClasses"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 40
    :try_start_5
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->isMutable()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_16

    if-nez v0, :cond_e

    .line 48
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;->innerClasses:Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;

    return-void

    .line 41
    :cond_e
    :try_start_e
    new-instance p1, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string v0, "innerClasses.isMutable()"

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_16} :catch_16

    .line 45
    :catch_16
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "innerClasses == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;->innerClasses:Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getInnerClasses()Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;->innerClasses:Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;

    return-object v0
.end method
