.class public Lorg/apache/tools/ant/util/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# static fields
.field public static INSTANCE:Lorg/apache/tools/ant/util/NullOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/tools/ant/util/NullOutputStream;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/NullOutputStream;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/NullOutputStream;->INSTANCE:Lorg/apache/tools/ant/util/NullOutputStream;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 2

    .line 54
    return-void
.end method

.method public write([B)V
    .registers 2

    .line 42
    return-void
.end method

.method public write([BII)V
    .registers 4

    .line 48
    return-void
.end method
