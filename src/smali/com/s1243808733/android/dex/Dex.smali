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
.method static bridge synthetic -$$Nest$fgetstrings(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/Dex$StringTable;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcheckBounds(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dex/Dex;->checkBounds(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 58
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

    .line 61
    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/s1243808733/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    .line 63
    new-instance v0, Lcom/s1243808733/android/dex/Dex$StringTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$StringTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$StringTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    .line 64
    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    .line 65
    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    .line 66
    new-instance v0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$ProtoIdTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    .line 67
    new-instance v0, Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$FieldIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$FieldIdTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    .line 68
    new-instance v0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$MethodIdTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    .line 88
    new-array p1, p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    .line 89
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/s1243808733/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    .line 63
    new-instance v0, Lcom/s1243808733/android/dex/Dex$StringTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$StringTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$StringTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    .line 64
    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    .line 65
    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    .line 66
    new-instance v0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$ProtoIdTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    .line 67
    new-instance v0, Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$FieldIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$FieldIdTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    .line 68
    new-instance v0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$MethodIdTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dex/util/FileUtils;->hasArchiveSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 108
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 109
    const-string v1, "classes.dex"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    .line 112
    :try_start_53
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5f

    if-eqz p1, :cond_5b

    .line 113
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_5b
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_96

    :catchall_5f
    move-exception v0

    if-eqz p1, :cond_6a

    .line 111
    :try_start_62
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception p1

    invoke-static {v0, p1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    throw v0

    .line 116
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected classes.dex in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_7f
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 119
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 120
    :try_start_90
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_97

    .line 121
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_96
    return-void

    :catchall_97
    move-exception p1

    .line 119
    :try_start_98
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a0

    :catchall_9c
    move-exception v0

    invoke-static {p1, v0}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_a0
    throw p1

    .line 123
    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown output extension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/s1243808733/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    .line 63
    new-instance v0, Lcom/s1243808733/android/dex/Dex$StringTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$StringTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$StringTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    .line 64
    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    .line 65
    new-instance v0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    .line 66
    new-instance v0, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$ProtoIdTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    .line 67
    new-instance v0, Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$FieldIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$FieldIdTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    .line 68
    new-instance v0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$MethodIdTable-IA;)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    .line 97
    :try_start_38
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3f

    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_3f
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 100
    throw v0
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/s1243808733/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    .line 63
    new-instance v1, Lcom/s1243808733/android/dex/Dex$StringTable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dex/Dex$StringTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$StringTable-IA;)V

    iput-object v1, p0, Lcom/s1243808733/android/dex/Dex;->strings:Lcom/s1243808733/android/dex/Dex$StringTable;

    .line 64
    new-instance v1, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable-IA;)V

    iput-object v1, p0, Lcom/s1243808733/android/dex/Dex;->typeIds:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    .line 65
    new-instance v1, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable-IA;)V

    iput-object v1, p0, Lcom/s1243808733/android/dex/Dex;->typeNames:Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;

    .line 66
    new-instance v1, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dex/Dex$ProtoIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$ProtoIdTable-IA;)V

    iput-object v1, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    .line 67
    new-instance v1, Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dex/Dex$FieldIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$FieldIdTable-IA;)V

    iput-object v1, p0, Lcom/s1243808733/android/dex/Dex;->fieldIds:Lcom/s1243808733/android/dex/Dex$FieldIdTable;

    .line 68
    new-instance v1, Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$MethodIdTable-IA;)V

    iput-object v1, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    .line 79
    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    .line 80
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dex/TableOfContents;->readFrom(Lcom/s1243808733/android/dex/Dex;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static checkBounds(II)V
    .registers 4

    if-ltz p0, :cond_5

    if-ge p0, p1, :cond_5

    return-void

    .line 146
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", length="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loadFrom(Ljava/io/InputStream;)V
    .registers 6
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
    :goto_9
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 136
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 139
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    .line 140
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 141
    iget-object p1, p0, Lcom/s1243808733/android/dex/Dex;->tableOfContents:Lcom/s1243808733/android/dex/TableOfContents;

    invoke-virtual {p1, p0}, Lcom/s1243808733/android/dex/TableOfContents;->readFrom(Lcom/s1243808733/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 6

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_23

    .line 187
    iget v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    add-int/2addr v0, p1

    .line 188
    iget-object p1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 189
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 190
    iget v1, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 192
    new-instance v1, Lcom/s1243808733/android/dex/Dex$Section;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/s1243808733/android/dex/Dex$Section;-><init>(Lcom/s1243808733/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/s1243808733/android/dex/Dex$Section-IA;)V

    .line 193
    iput v0, p0, Lcom/s1243808733/android/dex/Dex;->nextSectionStart:I

    return-object v1

    .line 185
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not four byte aligned!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public classDefs()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/s1243808733/android/dex/ClassDef;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/s1243808733/android/dex/Dex$ClassDefIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dex/Dex$ClassDefIterable;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$ClassDefIterable-IA;)V

    return-object v0
.end method

.method public computeChecksum()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 296
    const/16 v1, 0x2000

    new-array v2, v1, [B

    .line 297
    iget-object v3, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 298
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 299
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 300
    :goto_1b
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 301
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 302
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v0, v2, v5, v4}, Ljava/util/zip/Adler32;->update([BII)V

    goto :goto_1b

    .line 305
    :cond_31
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public computeSignature()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_37

    .line 279
    const/16 v1, 0x2000

    new-array v2, v1, [B

    .line 280
    iget-object v3, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 281
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 282
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    :goto_1c
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 284
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 285
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 286
    invoke-virtual {v0, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1c

    .line 288
    :cond_32
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 277
    :catch_37
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_3f

    :goto_3e
    throw v0

    :goto_3f
    goto :goto_3e
.end method

.method public descriptorIndexFromTypeIndex(I)I
    .registers 4

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

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public fieldIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dex/MethodId;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->methodIds:Lcom/s1243808733/android/dex/Dex$MethodIdTable;

    return-object v0
.end method

.method public open(I)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 5

    if-ltz p1, :cond_2a

    .line 172
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 176
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 177
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    iget-object p1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    new-instance p1, Lcom/s1243808733/android/dex/Dex$Section;

    const-string v1, "section"

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/s1243808733/android/dex/Dex$Section;-><init>(Lcom/s1243808733/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/s1243808733/android/dex/Dex$Section-IA;)V

    return-object p1

    .line 173
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    .line 174
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public protoIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dex/ProtoId;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex;->protoIds:Lcom/s1243808733/android/dex/Dex$ProtoIdTable;

    return-object v0
.end method

.method public readClassData(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassData;
    .registers 3

    .line 252
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getClassDataOffset()I

    move-result p1

    if-eqz p1, :cond_f

    .line 256
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/android/dex/Dex$Section;->-$$Nest$mreadClassData(Lcom/s1243808733/android/dex/Dex$Section;)Lcom/s1243808733/android/dex/ClassData;

    move-result-object p1

    return-object p1

    .line 254
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readCode(Lcom/s1243808733/android/dex/ClassData$Method;)Lcom/s1243808733/android/dex/Code;
    .registers 3

    .line 260
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassData$Method;->getCodeOffset()I

    move-result p1

    if-eqz p1, :cond_f

    .line 264
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/android/dex/Dex$Section;->-$$Nest$mreadCode(Lcom/s1243808733/android/dex/Dex$Section;)Lcom/s1243808733/android/dex/Code;

    move-result-object p1

    return-object p1

    .line 262
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readTypeList(I)Lcom/s1243808733/android/dex/TypeList;
    .registers 2

    if-nez p1, :cond_5

    .line 246
    sget-object p1, Lcom/s1243808733/android/dex/TypeList;->EMPTY:Lcom/s1243808733/android/dex/TypeList;

    return-object p1

    .line 248
    :cond_5
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readTypeList()Lcom/s1243808733/android/dex/TypeList;

    move-result-object p1

    return-object p1
.end method

.method public strings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex;->writeTo(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 164
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_c
    move-exception p1

    .line 162
    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v0

    invoke-static {p1, v0}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_15
    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 152
    iget-object v2, p0, Lcom/s1243808733/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 154
    :goto_d
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 155
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 156
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {p1, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_d

    :cond_23
    return-void
.end method
