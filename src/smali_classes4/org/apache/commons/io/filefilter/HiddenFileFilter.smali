.class public Lorg/apache/commons/io/filefilter/HiddenFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HIDDEN:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final VISIBLE:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x7bf0b9c4d4ed8916L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/HiddenFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->HIDDEN:Lorg/apache/commons/io/filefilter/IOFileFilter;

    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    sget-object v1, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->HIDDEN:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->VISIBLE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method
