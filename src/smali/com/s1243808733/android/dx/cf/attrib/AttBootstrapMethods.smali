.class public Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttBootstrapMethods.java"


# static fields
.field private static final ATTRIBUTE_HEADER_BYTES:I = 0x8

.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "BootstrapMethods"

.field private static final BOOTSTRAP_ARGUMENT_BYTES:I = 0x2

.field private static final BOOTSTRAP_METHOD_BYTES:I = 0x4


# instance fields
.field private final bootstrapMethods:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

.field private final byteLength:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;)V
    .registers 5

    .line 36
    const-string v0, "BootstrapMethods"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;->bootstrapMethods:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    .line 39
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    .line 40
    :goto_10
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 41
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->getBootstrapMethodArguments()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 44
    :cond_28
    iput v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;->byteLength:I

    return-void
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;->byteLength:I

    return v0
.end method

.method public getBootstrapMethods()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;->bootstrapMethods:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    return-object v0
.end method
