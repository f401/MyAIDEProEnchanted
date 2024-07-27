.class public final Lcom/s1243808733/android/dex/Dex;
.super Ljava/lang/Object;
.source "Dex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dex/Dex$ClassDefIterable;,
        Lcom/s1243808733/android/dex/Dex$ClassDefIterator;,
        Lcom/s1243808733/android/dex/Dex$FieldIdTable;,
        Lcom/s1243808733/android/dex/Dex$MethodIdTable;,
        Lcom/s1243808733/android/dex/Dex$ProtoIdTable;,
        Lcom/s1243808733/android/dex/Dex$Section;,
        Lcom/s1243808733/android/dex/Dex$StringTable;,
        Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;,
        Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;
    }
.end annotation


# static fields
.field private static final CHECKSUM_OFFSET:I = 0x8

.field private static final CHECKSUM_SIZE:I = 0x4

.field static final EMPTY_SHORT_ARRAY:[S

.field private static final SIGNATURE_OFFSET:I = 0xc

.field private static final SIGNATURE_SIZE:I = 0x14


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private final fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

.field private final methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

.field private nextSectionStart:I

.field private final protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

.field private final strings:Lcom/s1243808733/android/dex/Dex$StringTable;

.field private final tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

.field private final typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

.field private final typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [S

    sput-object v0, Lcom/s1243808733/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/s1243808733/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    new-instance v0, Lcom/s1243808733/android/dex/Dex$StringTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$StringTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$FieldIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    .line 88
    new-array v0, p1, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/s1243808733/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    new-instance v0, Lcom/s1243808733/android/dex/Dex$StringTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$StringTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$FieldIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dex/util/FileUtils;->hasArchiveSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 109
    const-string v1, "classes.dex"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_5

    .line 111
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-result-object v2

    .line 112
    :try_start_1
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 112
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    :cond_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    if-nez v1, :cond_3

    :goto_2
    throw v0

    :cond_3
    if-eq v1, v0, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object v0, v1

    goto :goto_2

    .line 116
    :cond_5
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "classes.dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 119
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 120
    :try_start_4
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_7

    :try_start_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    :goto_3
    if-nez v0, :cond_9

    move-object v0, v1

    :cond_8
    :goto_4
    throw v0

    :cond_9
    if-eq v0, v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 123
    :cond_a
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown output extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :catchall_4
    move-exception v1

    move-object v0, v2

    goto :goto_3

    .line 112
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/s1243808733/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    new-instance v0, Lcom/s1243808733/android/dex/Dex$StringTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$StringTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$FieldIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    .line 97
    :try_start_0
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    .line 97
    :catchall_0
    move-exception v0

    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/s1243808733/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    new-instance v0, Lcom/s1243808733/android/dex/Dex$StringTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$StringTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$FieldIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    .line 79
    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dex/TableOfContents;->readFrom(Lcom/s1243808733/android/dex/Dex;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$1000015(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dex/Dex;->checkBounds(II)V

    return-void
.end method

.method static synthetic access$L1000005(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/Dex$StringTable;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    return-object v0
.end method

.method static synthetic access$S1000005(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/TableOfContents;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    return-void
.end method

.method static synthetic access$S1000007(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$StringTable;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    return-void
.end method

.method private static checkBounds(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 145
    if-ltz p0, :cond_0

    if-lt p0, p1, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private loadFrom(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 135
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 141
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dex/TableOfContents;->readFrom(Lcom/s1243808733/android/dex/Dex;)V

    return-void

    .line 136
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 6

    .line 184
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not four byte aligned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    add-int/2addr v0, p1

    .line 188
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 189
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 190
    iget v2, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 192
    new-instance v2, Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v2, p0, p2, v1}, Lcom/s1243808733/android/dex/Dex$Section;-><init>(Lcom/s1243808733/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 193
    iput v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    .line 194
    return-object v2
.end method

.method public classDefs()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/s1243808733/android/dex/ClassDef;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/s1243808733/android/dex/Dex$ClassDefIterable;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/Dex$ClassDefIterable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    return-object v0
.end method

.method public computeChecksum()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 295
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 296
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 297
    iget-object v2, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 299
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 300
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 301
    :cond_0
    array-length v3, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 302
    invoke-virtual {v2, v1, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v0, v1, v5, v3}, Ljava/util/zip/Adler32;->update([BII)V

    goto :goto_0
.end method

.method public computeSignature()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 273
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 279
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 280
    iget-object v2, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 282
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 273
    :catch_0
    move-exception v0

    .line 277
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 284
    :cond_0
    array-length v3, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 285
    invoke-virtual {v2, v1, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 286
    invoke-virtual {v0, v1, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0
.end method

.method public descriptorIndexFromTypeIndex(I)I
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/s1243808733/android/dex/Dex;->checkBounds(II)V

    .line 323
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 324
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public fieldIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/FieldId;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    return-object v0
.end method

.method public getBytes()[B
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    .line 211
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 213
    return-object v1
.end method

.method public getLength()I
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getNextSectionStart()I
    .registers 2

    .line 202
    iget v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    return v0
.end method

.method public getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    return-object v0
.end method

.method public methodIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/MethodId;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    return-object v0
.end method

.method public open(I)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 7

    .line 172
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 177
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    new-instance v1, Lcom/s1243808733/android/dex/Dex$Section;

    const-string v2, "section"

    invoke-direct {v1, p0, v2, v0}, Lcom/s1243808733/android/dex/Dex$Section;-><init>(Lcom/s1243808733/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public protoIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dex/ProtoId;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    return-object v0
.end method

.method public readClassData(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassData;
    .registers 4

    .line 252
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getClassDataOffset()I

    move-result v0

    .line 253
    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex$Section;->access$1000025(Lcom/s1243808733/android/dex/Dex$Section;)Lcom/s1243808733/android/dex/ClassData;

    move-result-object v0

    return-object v0
.end method

.method public readCode(Lcom/s1243808733/android/dex/ClassData$Method;)Lcom/s1243808733/android/dex/Code;
    .registers 4

    .line 260
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v0

    .line 261
    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex$Section;->access$1000020(Lcom/s1243808733/android/dex/Dex$Section;)Lcom/s1243808733/android/dex/Code;

    move-result-object v0

    return-object v0
.end method

.method public readTypeList(I)Lcom/s1243808733/android/dex/TypeList;
    .registers 3

    .line 245
    if-nez p1, :cond_0

    .line 246
    sget-object v0, Lcom/s1243808733/android/dex/TypeList;->EMPTY:Lcom/s1243808733/android/dex/TypeList;

    .line 248
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->readTypeList()Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    goto :goto_0
.end method

.method public strings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    return-object v0
.end method

.method public typeIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    return-object v0
.end method

.method public typeNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    return-object v0
.end method

.method public writeHashes()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex;->computeSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->write([B)V

    .line 314
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex;->computeChecksum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method

.method public writeTo(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dex/Dex;->writeTo(Ljava/io/OutputStream;)V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_2
    :goto_0
    throw v0

    :cond_3
    if-eq v0, v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 151
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 152
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 154
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 155
    :cond_0
    array-length v2, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 156
    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {p1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
